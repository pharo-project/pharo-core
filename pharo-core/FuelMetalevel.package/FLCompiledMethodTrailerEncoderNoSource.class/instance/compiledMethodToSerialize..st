method encoding
compiledMethodToSerialize: aCompiledMethod

	^ aCompiledMethod copyWithTrailerBytes: CompiledMethodTrailer empty.