zalloc: numberOfBytes
	"same as #alloc: but additionally zero-fill the allocated memory"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>


	^ self nbCall:
		#( LPVOID HeapAlloc (self , HEAP_ZERO_MEMORY , SIZE_T numberOfBytes) ) 
