primSetIndentOn: anAthensParagraph

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	self pangoNbCall: #(void  pango_layout_set_indent (
					PangoLayout anAthensParagraph,
					int indentation) ) 
	