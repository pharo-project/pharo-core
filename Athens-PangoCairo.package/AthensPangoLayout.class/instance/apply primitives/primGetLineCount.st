primGetLineCount
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	^ self pangoNbCall:#(int pango_layout_get_line_count  (PangoLayout self) )