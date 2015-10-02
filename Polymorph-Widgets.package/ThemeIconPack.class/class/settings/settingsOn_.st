settingsOn: aBuilder 
	<systemsettings>

	(aBuilder pickOne: #current)
		parent: #appearance;
		label: 'Icon Set';
		target: self;
		order: 2;
		domainValues: self uiIconSetChoises