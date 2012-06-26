self-updating
updateCodePaneIfNeeded
	"If the code for the currently selected method has changed underneath me, then update the contents of my code pane unless it holds unaccepted edits"

	self didCodeChangeElsewhere
		ifTrue:
			[self hasUnacceptedEdits
				ifFalse:
					[self setContentsToForceRefetch.
					self contentsChanged]
				ifTrue:
					[self changed: #codeChangedElsewhere]]