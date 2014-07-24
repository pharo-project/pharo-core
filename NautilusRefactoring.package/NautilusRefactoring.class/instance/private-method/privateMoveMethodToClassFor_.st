privateMoveMethodToClassFor: aMethod
	| class |
	class := (SearchFacade classSearchInEnvironment: Smalltalk) chooseFromOwner: World.
	^ RBMoveMethodToClassRefactoring
		model: environment
		method: aMethod
		class: class