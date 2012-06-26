buttons behavior
clearButtonAction

	self promptForClear
		ifTrue: [self model clearAll]