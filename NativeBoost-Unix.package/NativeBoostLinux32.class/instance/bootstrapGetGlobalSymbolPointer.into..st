bootstrapping
bootstrapGetGlobalSymbolPointer: symbolName into: returnValueBuffer
	" call  dlsym(RTLD_DEFAULT, symbolName) "

	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin' error: errorCode>
	^ self nbCallout
		options: #( - optUseStackPointer );
		function: #( NBBootstrapUlong (RTLD_DEFAULT , String symbolName) )
		emit: [:gen |	 | asm |
				self assert: (self primitiveDlsym ~= 0).
				
				asm := gen asm.
				asm mov: (self primitiveDlsym asUImm) to: asm EAX.
				asm call: asm EAX.
		] 
	