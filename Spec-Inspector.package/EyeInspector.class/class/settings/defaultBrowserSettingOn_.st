defaultBrowserSettingOn: aBuilder
	<systemsettings>
	(aBuilder setting: #useAutoRefresh)
				target: self;
				parent: #debugging;
				label: 'Auto Refresh Inspectors' translated;
				description: 'If true, refreshes inspectors in regular intervals' translated 