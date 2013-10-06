primGetJustifyFrom: anAthensParagraph
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self pangoNbCall: #(gboolean  pango_layout_get_justify (PangoLayout anAthensParagraph))
