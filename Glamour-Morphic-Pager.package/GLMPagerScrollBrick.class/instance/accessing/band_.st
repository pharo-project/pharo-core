band: aBrick

	band := aBrick.
	band layoutPolicy: GLMPagerBandLayout new.
	band width: [ :bandBrick | (self width / (self maxPanes min: self band subbricksCount) + self paneMargin) * self band subbricksCount ].
	
	self addBrickBack: band.