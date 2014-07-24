privateInsertSubclassFor: class

	| subclassName |
	subclassName := self request: 'Enter new subclass name:'.
	^ RBAddClassRefactoring
		model: environment
		addClass: subclassName
		superclass: class
		subclasses: class subclasses
		category: class category