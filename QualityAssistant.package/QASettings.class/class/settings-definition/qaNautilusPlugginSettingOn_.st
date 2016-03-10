qaNautilusPlugginSettingOn: aBuilder
	<systemsettings>

	(aBuilder setting: #nautilusPlugin)
		order: 4;
		target: self;
		label: 'Nautilus Plugin' translated;
		description: 'Enable Nautilus plugin which shows a group with critics and allows to preview them.';
		parent: #qualityAssistant.