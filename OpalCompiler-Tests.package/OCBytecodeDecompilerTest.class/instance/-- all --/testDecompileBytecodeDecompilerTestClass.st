testDecompileBytecodeDecompilerTestClass
	| decompiledIR aCompiledMethod |
	self class methodDict
		do: [ :each | 
			decompiledIR := IRBytecodeDecompiler new decompile: each.
			aCompiledMethod := decompiledIR compiledMethod ]