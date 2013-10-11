settingsOn: aBuilder 
	<systemsettings>

	(aBuilder setting: #useSourceCode)
		parent: #appearance; 
		order: 4;
		target: self;
		icon: Smalltalk ui icons smallConfigurationIcon;
		label: 'Source Code Fonts' translated;
		description: 'Use Source Code Pro Fonts' translated;
		precondition: [ FT2Library current notNil ];
		dialog: [ self fontSourceCodeRow ].
		