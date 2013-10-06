testMultiElementArray
	| aCompiledMethod bytecode index |
	aCompiledMethod := (OpalCompiler new 
									compile: 'method
	^{1. 2. 3. 4. 5. 6 }'
									in: OCMockCompilationClass
									classified: nil
									notifying: nil
									ifFail: [])
									generate.
									
	bytecode := aCompiledMethod symbolic asString subStrings: '
'.
	index := 0.
	self assert: (bytecode at: (index := index + 1)) = '29 <76> pushConstant: 1'.
	self assert: (bytecode at: (index := index + 1)) = '30 <77> pushConstant: 2'.
	self assert: (bytecode at: (index := index + 1)) = '31 <20> pushConstant: 3'.
	self assert: (bytecode at: (index := index + 1)) = '32 <21> pushConstant: 4'.
	self assert: (bytecode at: (index := index + 1)) = '33 <22> pushConstant: 5'.
	self assert: (bytecode at: (index := index + 1)) = '34 <23> pushConstant: 6'.
	self assert: (bytecode at: (index := index + 1)) = '35 <8A 86> pop 6 into (Array new: 6)'.
	self assert: (bytecode at: (index := index + 1)) = '37 <7C> returnTop'.
