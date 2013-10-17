generate: trailer
	
	| irTranslator |
      irTranslator := IRTranslator new
		compilationContext: compilationContext;
		trailer: trailer;
		interpret: self;
		pragmas: pragmas;
		yourself.
	compiledMethod := irTranslator compiledMethod.
	self sourceNode ifNotNil: [ 
		compiledMethod classBinding: self sourceNode methodClass binding.
		compiledMethod selector: self sourceNode selector.]
		ifNil: [ 
		compiledMethod classBinding: UndefinedObject binding.
		compiledMethod selector: #UndefinedMethod ].
	^compiledMethod.