setTextModelForClassOrMethod: aCritic

	| interval |
	sourceCodeModel aboutToStyle: true.
	sourceCodeModel text: aCritic definition.
	sourceCodeModel behavior: aCritic textBehavior.
	interval := self selectionIntervalFor: aCritic definition.
	interval ifNotNil: [ sourceCodeModel setSelection: interval ].
	
	
					