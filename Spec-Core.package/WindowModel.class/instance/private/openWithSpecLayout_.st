openWithSpecLayout: aSpec

	window contents: (self buildWithSpecLayout: aSpec).
	self changed: #open with: #().
	self updateTitle.