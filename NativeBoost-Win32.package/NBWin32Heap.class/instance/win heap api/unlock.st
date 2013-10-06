unlock

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>


	^ self nbCall: #( BOOL HeapUnlock (self) )
