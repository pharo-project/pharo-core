settingsOn: aBuilder 
	<systemsettings>

	(aBuilder group: #shortcutreminder)
		label: 'Shortcut Reminder';
		with: [ 
			(aBuilder setting: #enableShortcutReminder)
				order: 4;
				target: self;
				icon: Smalltalk ui icons smallConfigurationIcon;
				label: 'Enable Shortcut Reminder';
				description: 'The thing that reminds you when you do not use the shortcuts'.
				
			(aBuilder setting: #timesShortcutReminder)
				order: 5;
				target: self;
				icon: Smalltalk ui icons smallConfigurationIcon;
				label: 'Times to Remind a Shortcut';
				description: 'The number of times we are going to casser tes couilles'.
		]