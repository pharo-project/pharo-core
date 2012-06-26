setting
startupPreferencesSettingsOn: aBuilder
	<systemsettings>
	
	(aBuilder group: #'Startup Preferences')
		target: self;
		label: 'Startup Preferences' translated;
		description: 'Settings related to Startup Preferences' translated;
		with: [
			(aBuilder setting: #allowStartupScript)
				label: 'Allow the preferences to be loaded at startup' translated;
				description: 'If true, the preferences will be loaded' translated ]