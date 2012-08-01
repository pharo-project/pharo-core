setting
recentMessageListSettingOn: aBuilder 
	<systemsettings>

	(aBuilder group: #recentMessageList)
		target: self;
		parent: #codeBrowsing;
		label: 'Recent Messages' translated;
		description: 'Settings related to the recent messages browser' translated;
		with: [
			(aBuilder setting: #maxListSize)
				target: self;
				targetSelector: #uniqueInstance;
				label: 'Maximum size of the methods list' translated;
				description: 'If negative or zero, the size will be infinite. Caution : It may slow down your system' translated.
			(aBuilder setting: #useAsASet)
				target: self;
				targetSelector: #uniqueInstance;
				label: 'Use as a Set' translated;
				description: 'If true, then the list will act as a Set' translated.]