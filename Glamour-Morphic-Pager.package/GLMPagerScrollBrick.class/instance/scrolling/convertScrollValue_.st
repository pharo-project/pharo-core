convertScrollValue: aFloat
		
	^ (self width - ((self width / self pagerModel actualNumberOfVisiblePages + self paneMargin) * self band subbricksCount)) * aFloat