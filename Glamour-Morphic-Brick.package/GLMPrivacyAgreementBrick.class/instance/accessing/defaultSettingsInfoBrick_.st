defaultSettingsInfoBrick: anObject
	defaultSettingsInfoBrick := anObject.
	self defaultSettingsInfoBrick
		beReadOnly;
		withoutAnyDecorator;
		marginTop: -5;
		marginLeft: 0;
		font: self themer privacyAgreementThemer font;
		text: self defaultSettingInfoText.

	self addBrickBack: self defaultSettingsInfoBrick