renameTextSelection

	self model selectedMethod 
		ifNotNil: [ ^ self renameTextSelectionForMethod ].
	
	(self model  selectedCategory isNil and: [ self model selectedClass notNil ])	
		ifTrue: [ " we are editing a class definition " 
			^ self renameTextSelectionForClass ].