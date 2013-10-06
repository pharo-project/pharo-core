isEllipsized  
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	^ self pangoNbCall:#(int   pango_layout_is_ellipsized  (PangoLayout self))
	