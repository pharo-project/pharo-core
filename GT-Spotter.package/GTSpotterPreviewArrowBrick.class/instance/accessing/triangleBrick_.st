triangleBrick: aBrick

	triangleBrick := aBrick.
	self triangleBrick addUpAction: [ self spotterModel togglePreview ].
	self themer spotterThemer spotterPreviewArrowStyleFor: self triangleBrick.
	self addBrickBack: self triangleBrick
	