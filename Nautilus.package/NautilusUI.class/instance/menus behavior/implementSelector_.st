implementSelector: aSelector
	| behavior method category head source |
	
	category := Protocol unclassified.
	behavior := SearchFacade classSearch chooseFromOwner: self window.
	aSelector ifNil: [ ^ sourceTextArea flash ].
	behavior ifNil: [ ^ sourceTextArea flash ].
	
	(behavior includesSelector: aSelector)
		ifFalse: [ 
			head := (self signatureFor: aSelector).
			source := head,'

	^ self shouldBeImplemented'.
			method := behavior compile: source classified: category notifying: sourceTextArea ].

	method := (behavior methodNamed: aSelector).
	self showInstance: true.
	self showGroups: false.

	self model
		package: behavior package 
		class: behavior
		category: category
		method: method.
		
	self update.
	self updateBothView.
	self changed: #sourceCodeFrom:.
	self giveFocusTo: sourceTextArea.
	head
		ifNotNil: [ sourceTextArea selectFrom: head size + 4 to: source size ].