primNumberOfStops
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
		
	^ self pangoNbCall: #(int  pango_tab_array_get_size  (PangoTabArray self))	