saveDefaultSettingsButtonBrick: anObject
	saveDefaultSettingsButtonBrick := anObject.
	
	self saveDefaultSettingsButtonBrick
		margin: self defaultMargin;
		hSpaceFill: 90;
		vShrinkWrap;
		marginTop: 15;
		marginBottom: 0;
		text: self defaultSaveDefaultSettingsButtonText;
		when: #onClicked do: [ :anAnnouncemnt :anAnnoucer | 
			self persistSettings ].
	
	self addBrickBack: self saveDefaultSettingsButtonBrick