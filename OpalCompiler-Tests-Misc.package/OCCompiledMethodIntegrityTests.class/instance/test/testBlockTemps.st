testBlockTemps

	| newCompiledMethod originalCompiledMethod |
	
	(Smalltalk hasClassNamed: #Compiler) ifFalse: [^self skip].
	
	newCompiledMethod := OpalCompiler new 
								source: 'ascentOf: aCharacter
											^ [ | temp1 temp2 temp3 | 1= temp1. 2 = temp2. 3 = temp3].';
								class: OCMockCompilationClass;
								compile.
								

	originalCompiledMethod := (Smalltalk classNamed: #Compiler) new 
								source: 'ascentOf: aCharacter
											^ [ | temp1 temp2 temp3 | 1= temp1. 2 = temp2. 3 = temp3].';
								class: OCMockCompilationClass;
								compile.
							
	self assert: newCompiledMethod numArgs = originalCompiledMethod numArgs.
	self assert: newCompiledMethod numLiterals = originalCompiledMethod numLiterals.
	self assert: newCompiledMethod numTemps = originalCompiledMethod numTemps.
	self assert: newCompiledMethod primitive = originalCompiledMethod primitive.
	self assert: newCompiledMethod header = originalCompiledMethod header