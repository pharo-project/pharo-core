primSetLineWidth: width
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	self nbCall: #(void cairo_set_line_width (
				self,
				double width) )
