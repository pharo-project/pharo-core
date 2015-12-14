drawRectangle: aRectangle
	self
		XDrawRectangle: self display
			with: drawable
			with: self
			with: aRectangle left
			with: aRectangle top
			with: aRectangle width
			with: aRectangle height