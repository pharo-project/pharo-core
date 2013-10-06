testGenerateWithSource
	| source ast method |
	source := 'testMethod |hello| ^hello. ' .
				ast := Compiler new
					source: source;
					class: self class;
					failBlock: [self error: 'compilation error'];
					translate.
	method := ast generateWithSource.				
					
	self assert: (method isKindOf: CompiledMethod).
	self assert: method trailer hasSourcePointer not.
	self assert: method trailer hasSource.
	self assert: (method sourceCode = source).
	
	