destroy

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>


	^ self nbCall: #( BOOL HeapDestroy (self) )