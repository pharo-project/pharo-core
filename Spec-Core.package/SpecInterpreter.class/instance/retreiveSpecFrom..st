interpreting
retreiveSpecFrom: aSymbol
	| instance aSpec |
	aSpec := ComposableSpec new.
	self class interpretASpec: aSymbol model: model superSpec: aSpec.
	aSpec subSpecs do: [:sub |
		sub addAsSubSpecTo: superSpec  ].
	instance :=  (SpecBinder 
			specFor: aSymbol 
			ifAbsent: [ ^ RawSpec new
							bindings: self bindings;
							defaultReceiver: aSymbol 
							model: model ]) new.
	^ instance 
		model: model;
		bindings: model bindings;
		yourself