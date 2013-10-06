indentation: anObject
	
"Sets the width in Pango units to indent each paragraph. A negative value of indent will produce a hanging indentation. That is, the first line will have the full width, and subsequent lines will be indented by the absolute value of indent.

The indent setting is ignored if layout alignment is set to PANGO_ALIGN_CENTER."

	indentation := anObject * PANGO_SCALE