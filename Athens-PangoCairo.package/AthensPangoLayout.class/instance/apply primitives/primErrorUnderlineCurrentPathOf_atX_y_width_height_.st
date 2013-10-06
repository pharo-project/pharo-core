primErrorUnderlineCurrentPathOf: aNBCairoContext
	atX: x
	y: y
	width: w
	height: h
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	self nbCall: #(void pango_cairo_error_underline_path    (
			 cairo_t aCairoCanvas,
                                                         double x,
                                                         double y,
                                                         double  w,
                                                         double  h) )