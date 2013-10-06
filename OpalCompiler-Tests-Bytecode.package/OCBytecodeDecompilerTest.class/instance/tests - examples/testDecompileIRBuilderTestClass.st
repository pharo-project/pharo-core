testDecompileIRBuilderTestClass
	|  decompiledIR aCompiledMethod |
	IRBuilderTest methodDict do:
					[ :each | decompiledIR := IRBytecodeDecompiler new decompile: each.
					self shouldnt: [aCompiledMethod := decompiledIR compiledMethod] raise: Error].
	