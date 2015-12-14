fillOval: aRectangle
	self
		XFillArc: self display
			with: drawable
			with: self
			with: aRectangle left
			with: aRectangle top
			with: aRectangle width
			with: aRectangle height
			with: 0
			with: 64*360