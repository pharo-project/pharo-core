passString: str
	"see testPrepareArgumentsKeepsStackAligned"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >
	

	^ self nbCallout
		function: #( uint (String str) ) emit: [
		:gen :proxy :asm |
			asm 
				mov: asm ESP to: asm EAX
		] 