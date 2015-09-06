systemSettingOn: aBuilder
	<systemsettings>
	(aBuilder group: #pharoSystem) 
		label: 'System';
		description: 'General system settings' ;
		with: [
			(aBuilder setting: #serverMode)
				label: 'Server mode';
				target: WorldState;
				description: 'If enabled, then each main rendering loop will always wait a complete delay of 50 ms' .
			(aBuilder setting: #useLocale)
				label: 'Use locale';
				target: Locale;
				selector: #activated;
				description: 'Use the system locale to set the system language at startup.']
