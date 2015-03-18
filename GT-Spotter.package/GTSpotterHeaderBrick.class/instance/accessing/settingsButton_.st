settingsButton: aBrick

	settingsButton ifNotNil: [self removeBrick: settingsButton].
	settingsButton := aBrick.
	
	self themer spotterThemer settingsButtonStyleFor: settingsButton.
	settingsButton
		hintTitle: 'Settings';
		hintText: 'Shows the settings UI';
		addUpAction: [ self openSettingsBrowser ].
	
	self addBrickBack: settingsButton