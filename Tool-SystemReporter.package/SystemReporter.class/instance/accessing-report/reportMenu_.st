reportMenu: aMenu
	^ aMenu
		title: 'Report' translated;
		add: 'Copy to Clipboard' translated action: #copyReportToClipboard;
		yourself