primGetWidth
	"	 the width in Pango units, or -1 if no width set. "

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self pangoNbCall: #(int  pango_layout_get_width (PangoLayout self))
					