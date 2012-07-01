private-accessing
getClassForGlobalOrClassVariable
	| definingClass type |
	definingClass := class whoDefinesClassVariable: variable.
	definingClass isNil 
		ifTrue: 
			[type := self model classNamed: variable.
			type isNil ifTrue: [type := self model classNamed: #Object]]
		ifFalse: [type := definingClass typeOfClassVariable: variable].
	moveToClasses := self selectVariableTypesFrom: (Array with: type)
				selected: (Array with: type).
	moveToClasses isNil ifTrue: [self refactoringError: 'Method not moved']