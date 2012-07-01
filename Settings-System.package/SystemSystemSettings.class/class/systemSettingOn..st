settings
systemSettingOn: aBuilder
	<systemsettings>
	(aBuilder group: #pharoSystem) 
		label: 'System' translated;
		description: 'General system settings' translated;
		with: [
			(aBuilder setting: #serverMode)
				label: 'Server mode' translated;
				target: WorldState;
				description: 'If enabled, then each main rendering loop will always wait a complete delay of 50ms' translated.
			(aBuilder setting: #checkSourcesFileAvailability)
				label: 'Check sources file availability' translated;
				target: SmalltalkImage;
				description: 'If true, then you will be warned, whenever you start up, if no sources file can be found.' translated.
			(aBuilder setting: #checkChangesFileAvailability)
				label: 'Check changes file availability' translated;
				target: SmalltalkImage;
				description: 'If true, then you will be warned, whenever you start up, if no changes file can be found.' translated.
			(aBuilder setting: #useLocale)
				label: 'Use locale' translated;
				target: Locale;
				selector: #activated;
				description: 'Use the system locale to set the system language at startup.' translated]
