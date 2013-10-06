testPragmas

	| newCompiledMethod originalCompiledMethod |
	
	(Smalltalk hasClassNamed: #Compiler) ifFalse: [^self skip].
	
	newCompiledMethod := OpalCompiler new 
									source: 'methodDoublePragma
											<hello: 5>
											<hello: 2>';
									class: OCMockCompilationClass;
									compile.

	originalCompiledMethod := (Smalltalk classNamed: #Compiler) new 
									source: 'methodDoublePragma
											<hello: 5>
											<hello: 2>';
									class: OCMockCompilationClass;
									compile.

							
	self assert: newCompiledMethod numArgs = originalCompiledMethod numArgs.
	self assert: newCompiledMethod numLiterals = originalCompiledMethod numLiterals.
	
	"AdditionalState assertions"
	self assert: newCompiledMethod literals first selector = originalCompiledMethod literals first selector.
	self assert:  (newCompiledMethod literals first analogousCodeTo: originalCompiledMethod literals first).
	self assert: (newCompiledMethod literals first instVarNamed: 'method') = newCompiledMethod.
		
	self assert: newCompiledMethod literals second = originalCompiledMethod literals second.
	self assert: newCompiledMethod numTemps = originalCompiledMethod numTemps.
	self assert: newCompiledMethod primitive = originalCompiledMethod primitive.
	self assert: newCompiledMethod header = originalCompiledMethod header