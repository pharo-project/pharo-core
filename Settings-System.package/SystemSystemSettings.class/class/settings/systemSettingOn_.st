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
			(aBuilder setting: #shouldDownloadSourcesFile)
				label: 'Download sources file' translated;
				target: SmalltalkImage;
				description: 'If true, when no sources file can be found, the file will be downloaded.' translated.
			(aBuilder setting: #useLocale)
				label: 'Use locale' translated;
				target: Locale;
				selector: #activated;
				description: 'Use the system locale to set the system language at startup.' translated]
