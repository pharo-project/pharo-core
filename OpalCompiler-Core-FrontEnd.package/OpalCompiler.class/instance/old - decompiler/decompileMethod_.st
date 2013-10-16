decompileMethod: aCompiledMethod
	self deprecated: 'decompiling bc->text is not supported'.
	^self parse: aCompiledMethod codeForNoSource. 
		