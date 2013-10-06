finalizeResourceData: aLayout  
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	self pangoNbCall: #(void  g_object_unref (aLayout))

