setTextModelForClassOrMethod: aCritic

	| interval |
	sourceCodeModel aboutToStyle: true.
	sourceCodeModel text: aCritic definition.
	sourceCodeModel behavior: (aCritic isClass ifTrue: [ nil ] ifFalse: [aCritic methodClass]).
	interval := self selectionIntervalFor: aCritic definition.
	interval ifNotNil: [ sourceCodeModel setSelection: interval ].
	
	
					