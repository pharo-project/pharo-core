primGetSizeWidth: aWordW height: aWordH
	
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	self pangoNbCall: #(void  pango_layout_get_size (
			PangoLayout self,
			int* aWordW,
			int* aWordH)).
					
