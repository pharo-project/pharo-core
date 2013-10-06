ellipsize: anObject
	"none, start, middle, end"

"Sets the type of ellipsization being performed for layout. Depending on the ellipsization mode ellipsize text is removed from the start, middle, or end of text so they fit within the width and height of layout set with pango_layout_set_width() and pango_layout_set_height().

If the layout contains characters such as newlines that force it to be layed out in multiple paragraphs, then whether each paragraph is ellipsized separately or the entire layout is ellipsized as a whole depends on the set height of the layout. See pango_layout_set_height() for details."

	ellipsize := anObject