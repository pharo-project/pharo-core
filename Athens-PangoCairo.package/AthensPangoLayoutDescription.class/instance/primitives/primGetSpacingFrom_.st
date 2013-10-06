primGetSpacingFrom: anAthensParagraph 
<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self pangoNbCall: #(int  pango_layout_get_spacing (PangoLayout anAthensParagraph))
					