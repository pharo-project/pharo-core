privateInsertSubclassFor: class

	| subclassName |
	subclassName := self request: 'Enter new subclass name:'.
	subclassName isEmptyOrNil ifTrue:[^ nil].
	^ RBAddClassRefactoring
		model: environment
		addClass: subclassName
		superclass: class
		subclasses: class subclasses
		category: class category