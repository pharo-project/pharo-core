primShowErrorUnderline: aCairoCanvas atX: x y: y width: w height: h 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	self nbCall: #(void pango_cairo_show_error_underline 
			 (cairo_t aCairoCanvas,
                                                         double x,
                                                         double  y,
                                                         double w,
                                                         double h) )	