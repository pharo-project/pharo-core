nautilusSettingsOn: aBuilder
	<systemsettings>
	
	(aBuilder setting: #showGroupsOnTop)
		parent: #Nautilus;
		target: self;
		label: 'Show groups on top ?';
		description: 'If true, Nautilus will show groups on top of package pane'.