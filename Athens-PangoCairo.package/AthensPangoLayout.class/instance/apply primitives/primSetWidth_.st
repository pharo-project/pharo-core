primSetWidth: aWidth 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	self pangoNbCall: #(void  pango_layout_set_width (
					PangoLayout self,
					int aWidth) )
					