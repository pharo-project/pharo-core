verticalScrollbar: aBrick

	verticalScrollbar := aBrick.
	verticalScrollbar width: self defaultScrollbarWidth.
	verticalScrollbar layoutProperties floating: self defaultScrollbarPosition.
	verticalScrollbar scrollPane: self.
	super addBrickBack: verticalScrollbar