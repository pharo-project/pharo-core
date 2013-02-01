retrieving symbols
loadModule: aModuleName
	" call an interpreter proxy function 
		void* ioLoadModuleOfLength(char*, int)
	to retrieve an external module handle
	
	if module can't be loaded, or not found , answer 0
	"
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout
			options: #(- optAllowExternalAddressPtr);
			function: #( ulong (char* aModuleName, NBByteArraySize aModuleName ))
			emit: [:gen |
				gen proxy callFn: #ioLoadModule:OfLength: .
			] 
