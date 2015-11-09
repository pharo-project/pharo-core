setTextModelForClassOrMethod: aCritic

	| interval |
	sourceCodeModel text: aCritic definition.
	sourceCodeModel aboutToStyle: true.
	sourceCodeModel behavior: (aCritic isClassOrTrait ifTrue: [ nil ] ifFalse: [aCritic methodClass]).
	interval := self selectionIntervalFor: aCritic definition.
	interval ifNotNil: [ sourceCodeModel setSelection: interval ].
	
	
					