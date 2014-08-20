startupPreferencesSettingsOn: aBuilder
	<systemsettings>
	
	(aBuilder setting: #allowStartupScript)
		label: 'Allow the preferences to be loaded at startup' translated;
		parent: #pharoSystem;
		target: self;
		description: 'If true, the preferences will be loaded' translated.