testOneFloat
	
	| aCompiledMethod bytecode index |
	aCompiledMethod := OpalCompiler new 
	source: 'one
	
	^1.0';
	class: Float class;
	compile.

									
	bytecode := aCompiledMethod symbolic asString subStrings: '
'.
	index := 0.
	self assert: (bytecode at: (index := index + 1)) = '17 <20> pushConstant: 1.0'.
	self assert: (bytecode at: (index := index + 1)) = '18 <7C> returnTop'.
	