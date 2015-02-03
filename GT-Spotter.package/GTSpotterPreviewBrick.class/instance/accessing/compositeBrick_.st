compositeBrick: aBrick

	self compositeBrick ifNotNil: [ self removeBrick: self compositeBrick ].
	compositeBrick := aBrick.
	self themer spotterThemer spotterPreviewCompositeStyleFor: compositeBrick.
	self addBrickBack: compositeBrick