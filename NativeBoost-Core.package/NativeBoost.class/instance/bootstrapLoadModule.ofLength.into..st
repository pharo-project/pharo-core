bootstrapping
bootstrapLoadModule: aModuleName ofLength: len into: returnValueBuffer
	" call an interpreter proxy function 
		void* ioLoadModuleOfLength(char*, int)
	to retrieve an external module handle
	
	Returning a long 32 bit value may trigger GC. So, we need a gate function for it,
	which we can't have without loading external stuff, so we store result into a byte array
	"
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout 
		options: #( - optDirectProxyFnAddress optAllowExternalAddressPtr);
		function: #( NBBootstrapUlong (byte * aModuleName , long len) )
		emit:  [:gen | 	gen proxy callFn: #ioLoadModule:OfLength: .  ] 
