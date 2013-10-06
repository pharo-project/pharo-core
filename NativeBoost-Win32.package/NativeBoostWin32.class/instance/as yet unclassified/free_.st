free: lpMem
"The HeapFree function frees a memory block allocated from a heap by the HeapAlloc or HeapReAlloc function. "

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	^ self nbCallout
		stdcall;
		"allow only external address"
		options: #( - optAllowByteArraysPtr + optAllowExternalAddressPtr );
		function: #( BOOL HeapFree (ulong heapHandle, 0, LPVOID lpMem) ) module: #Kernel32
