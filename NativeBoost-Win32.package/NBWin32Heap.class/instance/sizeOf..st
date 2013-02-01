win heap api
sizeOf: lpMem

	"The HeapSize function retrieves the size of a memory block allocated from a heap by the HeapAlloc or HeapReAlloc function."
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>


	^ self nbCall: 
		#( SIZE_T HeapSize (self, 0 , LPCVOID lpMem) ) 
