initializeShortcuts

	self bindKeyCombination: Character arrowLeft alt command toAction: [ pagerModel selectToLeft ].
	self bindKeyCombination: Character arrowRight alt command toAction: [ pagerModel selectToRight ].
	
	self bindKeyCombination: Character arrowLeft alt shift command toAction: [
		self pressedScrollerSizeCombination: #left.
	].

	self bindKeyCombination: Character arrowRight alt shift command toAction: [
		self pressedScrollerSizeCombination: #right.
	].