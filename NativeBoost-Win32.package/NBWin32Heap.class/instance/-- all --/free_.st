free: lpMem
"The HeapFree function frees a memory block allocated from a heap by the HeapAlloc or HeapReAlloc function. "

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>


	^ self nbCall: #( BOOL HeapFree (self, 0, LPVOID lpMem) )