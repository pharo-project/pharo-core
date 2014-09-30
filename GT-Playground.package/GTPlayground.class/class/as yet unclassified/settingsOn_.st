settingsOn: aBuilder 
	<systemsettings>
	
	(aBuilder setting: #GTPlaygroundStatus)
		target: self;
		parent: #gt;
		getSelector: #isGTPlaygroundEnabled;
		setSelector: #setGTPlaygroundEnabledStatus:; 
		label: 'GTPlayground';
		description: 'Enable or disable the GTPlayground.'