privateMoveInstVarToClass: aClass
	| newClass |
	newClass := (SearchFacade classSearchInEnvironment: Smalltalk) chooseFromOwner: World.
	^ self class: aClass andInstVariable: [ :class :variable | 
		RBMoveInstVarToClassRefactoring 
			model: environment
			variable: variable
			class: newClass
			oldClass: aClass ]