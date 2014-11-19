decompileMethod: aCompiledMethod
	^ Smalltalk globals 
		at: #OCDecompiler 
		ifPresent: [ :decompilerClass | [ decompilerClass decompile: aCompiledMethod ]
			on: Error 
			do: [ RBMethodNode errorMethodNode: aCompiledMethod selector errorMessage: 'Decompilation failed'.  ] ]
		ifAbsent: [ RBMethodNode errorMethodNode: aCompiledMethod selector errorMessage: 'No decompiler available'. ]

