tests
testSourceBySelectorEncoding

	| trailer |
	
	trailer := CompiledMethodTrailer new.
	
	trailer setSourceBySelector.
	
	self assert: (trailer kind == #SourceBySelector ).
	self assert: (trailer size = 1).
	
	trailer := trailer testEncoding.
	
	self assert: (trailer kind == #SourceBySelector ).
	self assert: (trailer size = 1).
	"the last bytecode index must be at 0"
	self assert: (trailer endPC = 0).
