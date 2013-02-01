win heap api
realloc: flags mem: lpMem size: dwBytes

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>


	^ self nbCall: 
			#( LPVOID HeapReAlloc (self, DWORD flags, LPVOID lpMem, SIZE_T dwBytes) )
