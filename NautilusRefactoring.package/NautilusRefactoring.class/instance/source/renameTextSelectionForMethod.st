renameTextSelectionForMethod
	| selectedInterval  method |
	method := self model selectedMethod.
	selectedInterval := self model selectionInterval.
	selectedInterval first = 1
		ifTrue: [ ^ self renameMethodFor: method ].
	self renameTemporaryNamed: self model contentSelection Between: selectedInterval from: method