markup: aString
"Sets the layout text and attribute list from marked-up text (see markup format). Replaces the current text and attribute list.
http://developer.gnome.org/pango/stable/PangoMarkupFormat.html "
	aString isNil ifTrue:[ ^ self ].
	self primSetMarkup: aString length: aString size 