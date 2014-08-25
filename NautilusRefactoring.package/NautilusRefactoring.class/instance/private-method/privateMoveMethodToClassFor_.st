privateMoveMethodToClassFor: aMethod
	| class |
	class := (SearchFacade classSearchInEnvironment: Smalltalk) chooseFromOwner: World.
	class ifNil: [ ^nil ].
	^ RBMoveMethodToClassRefactoring
		model: environment
		method: aMethod
		class: class