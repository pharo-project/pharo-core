primSetHeight: aHeight
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	self pangoNbCall: #(void  pango_layout_set_height (
					PangoLayout self,
					int aHeight) )

