at: aLineNumber in: anAthensPangoCairoPar
	
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	^ self pangoNbCall: #(PangoLayoutLine  pango_layout_get_line_readonly (PangoLayout anAthensPangoCairoPar, int aLineNumber))