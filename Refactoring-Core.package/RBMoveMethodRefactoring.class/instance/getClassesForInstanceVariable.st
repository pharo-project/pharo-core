private-accessing
getClassesForInstanceVariable
	| definingClass typer types |
	definingClass := class whoDefinesInstanceVariable: variable.
	typer := RBRefactoryTyper newFor: self model.
	typer runOn: definingClass.
	types := typer typesFor: variable.
	types isEmpty 
		ifTrue: [types := OrderedCollection with: (self model classNamed: #Object)].
	moveToClasses := self selectVariableTypesFrom: types
				selected: (typer guessTypesFor: variable).
	moveToClasses isNil ifTrue: [self refactoringError: 'Method not moved']