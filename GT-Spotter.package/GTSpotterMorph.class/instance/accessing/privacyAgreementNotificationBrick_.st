privacyAgreementNotificationBrick: aBrick
	
	privacyAgreementNotificationBrick ifNotNil: [self removeBrick: privacyAgreementNotificationBrick].
	privacyAgreementNotificationBrick := aBrick.
	
	self themer spotterThemer privacyAgreementNotificationStyleFor: privacyAgreementNotificationBrick.
	privacyAgreementNotificationBrick width: [ self width - (self paneBrick isPreviewShown 
			ifFalse: [self themer spotterThemer previewArrowWidth - (2*self themer spotterThemer previewBorderWidth)] 
			ifTrue: [0])].
	
	self addBrickBack: privacyAgreementNotificationBrick