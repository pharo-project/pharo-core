tests
testEncodingNoTrailer

	| trailer |
	
	trailer := CompiledMethodTrailer new.
	
	"by default it should be a no-trailer"	
	self assert: (trailer kind == #NoTrailer ).
	self assert: (trailer size = 1).
	
	trailer := trailer testEncoding.
	
	self assert: (trailer kind == #NoTrailer ).
	self assert: (trailer size = 1).
	"the last bytecode index must be at 0"
	self assert: (trailer endPC = 0).
