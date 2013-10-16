decompile
	self deprecated: 'decompiling bc->text is not supported'.
	^self class compiler decompileMethod: self.