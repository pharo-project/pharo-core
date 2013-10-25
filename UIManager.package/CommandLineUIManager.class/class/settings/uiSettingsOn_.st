uiSettingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #nonInteractive)
		label: 'Headless mode';
		with: [
			(aBuilder setting: #snapshotErrorImage)
				label: 'Make a snapshot of new version before quit' translated;
				target: CommandLineUIManager;
				description: 'On unhandled exception, save a new version of image before quit' translated]