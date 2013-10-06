primGetText 

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self pangoNbCall: #(String  pango_layout_get_text (PangoLayout self))