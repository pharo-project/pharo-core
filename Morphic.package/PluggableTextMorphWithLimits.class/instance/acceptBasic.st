actions
acceptBasic
	"should be refactored with accept that comes from PluggableTextMorphPlus "
	"Inform the model of text to be accepted, and return true if OK."

	| ok saveSelection saveScrollerOffset |
	
	self locked ifFalse: [ ^ super acceptBasic ].
	
	saveSelection := self selectionInterval copy.
	saveScrollerOffset := scroller offset copy.

	(self canDiscardEdits and: [self alwaysAccept not])
		ifTrue: [^ self flash].
 
	self hasEditingConflicts ifTrue:
		[(self confirm: 
'Caution! This method may have been
changed elsewhere since you started
editing it here.  Accept anyway?' translated) ifFalse: [^ self flash]].

	[ method methodClass compile: (self styler unstyledTextFrom: textMorph asText) classified: method category notifying: self ] ensure: [ unstyledAcceptText := nil ].

	self hasUnacceptedEdits: false.

	["During the step for the browser, updateCodePaneIfNeeded is called, and 
		invariably resets the contents of the codeholding PluggableTextMorph
		at that time, resetting the cursor position and scroller in the process.
		The following line forces that update without waiting for the step, then restores the cursor and scrollbar"

	ok ifTrue: "(don't bother if there was an error during compile)"
		[(model respondsTo: #updateCodePaneIfNeeded) 
			ifTrue: [model updateCodePaneIfNeeded].
		scroller offset: saveScrollerOffset.
		self setScrollDeltas.
		self selectFrom: saveSelection first to: saveSelection last]]

			on: Error do: []