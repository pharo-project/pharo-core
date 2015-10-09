settingsOnSendUsageData: aBuilder 
	<systemsettings>
	
	(aBuilder setting: #sendUsageData)
		parent: #gt;
		target: self;
		description: 'If checked, anonymous usage data is collected and regularly send to a remote server. Only information about how you use the GTools is collected (e.g., open, close, select, enter search query, dive in result). No method names, class names or any other piece of code is collected.' translated;
		label: 'Send anonymous usage data'
