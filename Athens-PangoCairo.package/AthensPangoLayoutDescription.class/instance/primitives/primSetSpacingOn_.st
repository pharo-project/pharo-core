primSetSpacingOn: anAthensParagraph

 	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
		
	self pangoNbCall: #(void  pango_layout_set_spacing (
					PangoLayout anAthensParagraph,
					int spacing) )
