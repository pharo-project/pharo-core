privateInsertSuperclassFor: class

	| superclassName |
	superclassName := self request: 'Enter new superclass name:'.
	^ RBAddClassRefactoring
		model: environment
		addClass: superclassName
		superclass: class superclass
		subclasses: class asOrderedCollection
		category: class category