finalizeResourceData: aTabs 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	self pangoNbCall:#(void pango_tab_array_free (PangoTabArray aTabs))
