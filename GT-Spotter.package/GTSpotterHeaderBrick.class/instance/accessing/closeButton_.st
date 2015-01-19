closeButton: aBrick

	closeButton ifNotNil: [self removeBrick: closeButton].
	closeButton := aBrick.
	
	self theme spotterWidgetThemer closeButtonStyleFor: closeButton.
	
	closeButton layoutProperties staticWidth: self height.	"to make button being a square"
	closeButton addUpAction: [ self brickRoot delete ].
	
	self addBrickBack: closeButton