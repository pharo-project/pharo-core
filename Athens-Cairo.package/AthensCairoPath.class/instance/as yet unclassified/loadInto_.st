loadInto: context

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	 
	^ self nbCall: #( void cairo_append_path (AthensCairoCanvas context, self ))
