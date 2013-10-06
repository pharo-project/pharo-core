openWithSpecLayout: aSpec

	window contents: (self buildWithSpecLayout: aSpec).
	window contents openInWorld.
	self updateTitle.