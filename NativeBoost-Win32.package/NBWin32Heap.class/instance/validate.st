win heap api
validate

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>


	^ self nbCall: #( BOOL HeapValidate (self) )