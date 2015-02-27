closeButton: aBrick

	closeButton ifNotNil: [self removeBrick: closeButton].
	closeButton := aBrick.
	
	self themer spotterThemer closeButtonStyleFor: closeButton.
	closeButton
		hintTitle: 'Close Spotter';
		hintText: '<escape>';
		addUpAction: [ self spotterModel exit ].
	
	self addBrickBack: closeButton