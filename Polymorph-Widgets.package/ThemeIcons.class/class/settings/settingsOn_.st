settingsOn: aBuilder 
	<systemsettings>

	(aBuilder pickOne: #uiIconClass)
		parent: #appearance;
		label: 'Icon Set' translated;
		target: self;
		order: 2;
		domainValues: self uiIconSetChoises