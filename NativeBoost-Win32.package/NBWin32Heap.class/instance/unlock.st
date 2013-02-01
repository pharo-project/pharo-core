win heap api
unlock

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>


	^ self nbCall: #( BOOL HeapUnlock (self) )
