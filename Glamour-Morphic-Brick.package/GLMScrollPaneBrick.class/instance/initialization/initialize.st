initialize
	super initialize.
	
	lastScrollTimeStamp := 0.
	currentVelocity := self class defaultScrollVelocity.
	
	band := GLMBandBrick new.
	
	self layoutPolicy: GLMBrickVerticalFillLinearLayout new.
	super addBrickBack: band.