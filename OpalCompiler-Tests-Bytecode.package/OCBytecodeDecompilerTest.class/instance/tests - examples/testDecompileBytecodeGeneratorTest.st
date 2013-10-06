testDecompileBytecodeGeneratorTest
	| decompiledIR aCompiledMethod |
	OCBytecodeGeneratorTest methodDict
		do: [ :each | 
			decompiledIR := IRBytecodeDecompiler new decompile: each.
			aCompiledMethod := decompiledIR compiledMethod ]