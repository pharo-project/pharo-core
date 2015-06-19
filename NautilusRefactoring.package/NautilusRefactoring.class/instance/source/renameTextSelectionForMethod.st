renameTextSelectionForMethod
	| selectedInterval selection method |
	method := self model selectedMethod.
	selection := self model sourceTextArea selectedContents asString.
	selectedInterval := self model sourceTextArea selectionInterval.
	selectedInterval first = 1
		ifTrue: [ ^ self renameMethodFor: method ].
	self renameTemporaryNamed: selection Between: selectedInterval from: method