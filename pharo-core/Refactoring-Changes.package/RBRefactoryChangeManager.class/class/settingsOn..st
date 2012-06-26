settings
settingsOn: aBuilder
	<systemsettings>
	
	(aBuilder setting: #undoSize)
		target: self;
		label: 'Undo size';
		parentName: #refactoring