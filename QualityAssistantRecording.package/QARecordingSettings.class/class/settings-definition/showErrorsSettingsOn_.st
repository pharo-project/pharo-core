showErrorsSettingsOn: aBuilder
	<systemsettings>
	(aBuilder setting: #showErrors)
		target: self;
		label: 'Show recorder erros (dev. only!)' translated;
		description: 'Signal errors that happen during event recording. This should be used by developers.';
		parent: #qualityAssistantRecording.