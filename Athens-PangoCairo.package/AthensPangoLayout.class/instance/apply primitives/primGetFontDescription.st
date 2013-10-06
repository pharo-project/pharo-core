primGetFontDescription
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	^ self pangoNbCall:#(PangoFontDescription  pango_layout_get_font_description ( PangoLayout self ) ) 