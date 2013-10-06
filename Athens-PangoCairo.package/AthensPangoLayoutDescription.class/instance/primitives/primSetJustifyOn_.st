primSetJustifyOn: anAthensParagraph
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	self pangoNbCall: #(void  pango_layout_set_justify (
					PangoLayout anAthensParagraph,
					gboolean justify ))
