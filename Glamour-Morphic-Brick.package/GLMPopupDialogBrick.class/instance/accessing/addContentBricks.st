addContentBricks
	self contentBricks do: [ :eachBrick |
		self contentBrick addBrickBack: eachBrick ]