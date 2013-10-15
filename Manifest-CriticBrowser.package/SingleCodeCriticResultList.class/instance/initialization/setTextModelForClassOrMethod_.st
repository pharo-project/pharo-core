setTextModelForClassOrMethod: aCritic

	| interval |
	sourceCodeModel aboutToStyle: true.
	sourceCodeModel text: aCritic definition.
	sourceCodeModel behavior: aCritic methodClass.
	interval := self selectionIntervalFor: aCritic definition.
	interval ifNotNil: [ sourceCodeModel setSelection: interval ].
	
	
					