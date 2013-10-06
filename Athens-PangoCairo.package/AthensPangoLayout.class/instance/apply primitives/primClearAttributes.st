primClearAttributes
	
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self pangoNbCall: #(void  pango_layout_set_attributes  (self,  nil) )
