primSetText: aString size: aStringSize
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	self pangoNbCall: #(void  pango_layout_set_text (
					self,
					String aString,
					int aStringSize) ) 