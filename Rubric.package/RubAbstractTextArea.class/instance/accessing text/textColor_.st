textColor: newColor
	textColor := newColor.
	self addAttribute: (TextColor color: newColor).
	self changed.