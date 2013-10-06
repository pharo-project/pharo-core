primSetTabsOn: anAthensParagraph

 	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
		
	self pangoNbCall: #(void  pango_layout_set_tabs (
					PangoLayout anAthensParagraph,
					PangoTabArray self) )
