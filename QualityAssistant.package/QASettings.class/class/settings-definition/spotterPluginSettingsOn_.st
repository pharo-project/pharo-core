spotterPluginSettingsOn: aBuilder
	<systemsettings>
	(aBuilder setting: #spotterPlugin)
		target: self;
		label: 'Spotter Plugin' translated;
		description: 'Enable GTSpotter plugin which shows a group with critics and allows to preview them.';
		parent: #qualityAssistant.