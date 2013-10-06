testNotUsedArgument

	| newCompiledMethod originalCompiledMethod |
	
	(Smalltalk hasClassNamed: #Compiler) ifFalse: [^self skip].
	
	newCompiledMethod := (OpalCompiler new 
								compile: 'ascentOf: aCharacter
											^ self ascent.'
								in: OCMockCompilationClass
								classified: nil
								notifying: nil
								ifFail: [])
									generate.

	originalCompiledMethod := ((Smalltalk classNamed: #Compiler) new 
								compile: 'ascentOf: aCharacter
											^ self ascent.'
								in: OCMockCompilationClass
								classified: nil
								notifying: nil
								ifFail: [])
									generate.
							
	self assert: newCompiledMethod numArgs = originalCompiledMethod numArgs.
	self assert: newCompiledMethod numLiterals = originalCompiledMethod numLiterals.
	self assert: newCompiledMethod numTemps = originalCompiledMethod numTemps.
	self assert: newCompiledMethod primitive = originalCompiledMethod primitive.
	self assert: newCompiledMethod header = originalCompiledMethod header