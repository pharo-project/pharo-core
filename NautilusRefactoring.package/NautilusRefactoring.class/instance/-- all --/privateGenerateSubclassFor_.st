privateGenerateSubclassFor: class
	| subclassName |
	subclassName := self request: 'Enter new subclass name:'.
	subclassName isEmptyOrNil ifTrue: [ ^ nil ].
	
	^ RBAddClassRefactoring
		model: environment
		addClass: subclassName
		superclass: class
		subclasses: (self chooseMultipleFrom: class subclasses title: 'Select subclasses of ' , subclassName , ':')
		category: class category