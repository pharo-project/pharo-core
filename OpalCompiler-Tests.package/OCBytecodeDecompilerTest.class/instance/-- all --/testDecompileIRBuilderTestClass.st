testDecompileIRBuilderTestClass
	| decompiledIR aCompiledMethod |
	IRBuilderTest methodDict
		do: [ :each | 
			decompiledIR := IRBytecodeDecompiler new decompile: each.
			aCompiledMethod := decompiledIR compiledMethod ]