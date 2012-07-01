code pane menu
runToSelection: selectionInterval
	| currentContext |
	self pc first >= selectionInterval first ifTrue: [ ^self ].
	currentContext := self selectedContext.
	[ currentContext == self selectedContext and: [ self pc first < selectionInterval first ] ] whileTrue: [ self doStep ].