testSimpleArray
	
	| aCompiledMethod bytecode index |
	aCompiledMethod := OpalCompiler new 
									source: 'method
	^{1}';
									class: OCMockCompilationClass;
									compile.
									
	bytecode := aCompiledMethod symbolic asString subStrings: '
'.
	index := 0.
	self assert: (bytecode at: (index := index + 1)) = '13 <76> pushConstant: 1'.
	self assert: (bytecode at: (index := index + 1)) = '14 <8A 81> pop 1 into (Array new: 1)'.
	self assert: (bytecode at: (index := index + 1)) = '16 <7C> returnTop'.
