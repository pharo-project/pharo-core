addHighlightFrom: start to: end color:  col

	self highlights add: (
		(TextHighlight on: self)
			color: col;
			lineRange: (start to: end))