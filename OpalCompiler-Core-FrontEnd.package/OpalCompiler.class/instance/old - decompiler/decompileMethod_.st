decompileMethod: aCompiledMethod

	| sourceCode |
	sourceCode := aCompiledMethod getSourceFromFile.
	
	^sourceCode 
		ifNil: [Decompiler new decompile: aCompiledMethod selector in: aCompiledMethod methodClass method: aCompiledMethod ]
		ifNotNil: [self parse: sourceCode class: aCompiledMethod methodClass ]