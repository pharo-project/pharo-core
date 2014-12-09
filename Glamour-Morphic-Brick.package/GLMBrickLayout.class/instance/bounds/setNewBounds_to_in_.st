setNewBounds: aLayoutBounds to: aMorph in: aBrick

	aMorph isBrick
				ifTrue: [ aMorph brickBounds: aLayoutBounds bounds compressed ]
				ifFalse: [ aMorph bounds: (aLayoutBounds bounds translateBy: aBrick globalBounds origin) ].