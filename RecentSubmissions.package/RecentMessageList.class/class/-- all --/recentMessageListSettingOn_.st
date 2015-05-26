recentMessageListSettingOn: aBuilder 
	<systemsettings>

	(aBuilder group: #recentMessageList)
		target: self;
		parent: #codeBrowsing;
		label: 'Recent Messages';
		description: 'Settings related to the recent messages browser';
		with: [
			(aBuilder setting: #maxListSize)
				target: self;
				targetSelector: #uniqueInstance;
				label: 'Maximum size of the methods list';
				description: 'If negative or zero, the size will be infinite. Caution : It may slow down your system' translated.
		]