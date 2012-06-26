testing
testGenerateWithSource
	| source ast method |
	source := 'testMethod |hello| ^hello. ' .
				ast := Compiler new
					compile: source
					in: self class
					notifying: nil
					ifFail: [self error: 'compilation error'].
	method := ast generateWithSource.				
					
	self assert: (method isKindOf: CompiledMethod).
	self assert: method trailer hasSourcePointer not.
	self assert: method trailer hasSource.
	self assert: (method sourceCode = source).
	
	