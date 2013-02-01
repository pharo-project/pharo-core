method encoding
compiledMethodToSerialize: aCompiledMethod

	^ aCompiledMethod copyWithTrailerBytes: (CompiledMethodTrailer new sourceCode: aCompiledMethod sourceCode ).
	