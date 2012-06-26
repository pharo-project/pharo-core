protocol
openWithSpec

	super openWithSpec.
	self setTitle.
	textModel text: textModel getText.
	^ window