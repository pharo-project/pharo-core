initialize
	super initialize.
	
	lastScrollTimeStamp := 0.
	currentVelocity := self class defaultScrollVelocity.
	scrollPosition := 0.
	
	band := self newBand.
	
	self layoutPolicy: GLMBrickVerticalFillLayout new.
	super addBrickBack: band.
	
	self verticalScrollbar: self newVerticalScrollbar.
	
	"initializes listener for mouse wheel scroll on windows vm"
	self initializeListeners.