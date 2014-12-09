sendEvent: aLayoutEvent to: aBrick

	aBrick isBrick ifTrue: [ aBrick onLayoutEvent: aLayoutEvent ]