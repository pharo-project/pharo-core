win heap api
alloc: numberOfBytes

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>

	^ self nbCall: #( LPVOID HeapAlloc (self , 0 , SIZE_T numberOfBytes) )