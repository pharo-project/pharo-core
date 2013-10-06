ellipsizeHeight: aPositiveIntOrMinusOne
	"Sets the height to which the PangoLayout should be ellipsized at. There are two different behaviors, based on whether height is positive or negative.

If height is positive, it will be the maximum height of the layout. Only lines would be shown that would fit, and if there is any text omitted, an ellipsis added. At least one line is included in each paragraph regardless of how small the height value is. A value of zero will render exactly one line for the entire layout.

If height is negative, it will be the (negative of) maximum number of lines per paragraph. That is, the total number of lines shown may well be more than this value if the layout contains multiple paragraphs of text. The default value of -1 means that first line of each paragraph is ellipsized. This behvaior may be changed in the future to act per layout instead of per paragraph. File a bug against pango at http://bugzilla.gnome.org/ if your code relies on this behavior.

Height setting only has effect if a positive width is set on layout and ellipsization mode of layout is not PANGO_ELLIPSIZE_NONE. The behavior is undefined if a height other than -1 is set and ellipsization mode is set to PANGO_ELLIPSIZE_NONE, and may change in the future."

	aPositiveIntOrMinusOne = -1 
		ifTrue:[self primSetHeight: aPositiveIntOrMinusOne]
		ifFalse:[self primSetHeight: aPositiveIntOrMinusOne	* PANGO_SCALE ]
	 