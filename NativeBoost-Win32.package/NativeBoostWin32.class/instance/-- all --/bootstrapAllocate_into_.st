bootstrapAllocate: size into: returnValueBuffer

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	^ self nbCallout 
		stdcall;
		options: #( - optDirectProxyFnAddress optAllowExternalAddressPtr);
		function: #( NBBootstrapUlong HeapAlloc (ulong heapHandle , 0 , SIZE_T size) ) module: #Kernel32
