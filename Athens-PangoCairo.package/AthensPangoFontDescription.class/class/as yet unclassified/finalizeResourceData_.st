finalizeResourceData: aFontDescription 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	self pangoNbCall:#(void pango_font_description_free (PangoFontDescription aFontDescription))
