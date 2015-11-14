inspectorPlugginSettingsOn: aBuilder
	<systemsettings>
	(aBuilder setting: #inspectorPluggin)
		target: self;
		label: 'Inspector Plugin' translated;
		description: 'Enable GTInspector plugin which shows a tab with number of critics and allows to inspect them.';
		icon: (Smalltalk ui icons iconNamed: #glamorousInspect);
		parent: #qualityAssistant.