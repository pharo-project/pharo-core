primToString
	
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self pangoNbCall:#(String pango_font_description_to_string (PangoFontDescription self)).