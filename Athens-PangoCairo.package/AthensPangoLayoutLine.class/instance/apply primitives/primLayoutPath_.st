primLayoutPath: aCairoCanvas 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	"Adds the text in a PangoLayout to the current path in the specified cairo context. The top-left corner of the PangoLayout will be at the current point of the cairo context."
	^ self nbCall: #(void pango_cairo_layout_line_path (
		cairo_t aCairoCanvas, 
		self) )
