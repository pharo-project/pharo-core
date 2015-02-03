closeButton: aBrick

	closeButton ifNotNil: [self removeBrick: closeButton].
	closeButton := aBrick.
	
	self themer spotterThemer closeButtonStyleFor: closeButton.
	
	closeButton layoutProperties staticWidth: self height.	"to make button being a square"
	closeButton addUpAction: [ self spotterModel exit ].
	
	self addBrickBack: closeButton