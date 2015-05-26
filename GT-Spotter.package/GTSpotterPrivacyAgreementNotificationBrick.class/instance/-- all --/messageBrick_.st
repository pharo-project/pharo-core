messageBrick: anObject

	messageBrick := anObject.
	self messageBrick
		hSpaceFill;
		margin:10;
		text: self privacyMessage.

	self addBrickBack: self messageBrick.