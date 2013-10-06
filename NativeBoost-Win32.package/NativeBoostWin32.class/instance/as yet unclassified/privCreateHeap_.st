privCreateHeap: returnValueBuffer

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	^ self nbCallout
			options: #( - optDirectProxyFnAddress );
			stdcall;
			function: #( NBBootstrapUlong HeapCreate ( HEAP_CREATE_ENABLE_EXECUTE , 0 , 0 ) ) module: #Kernel32
