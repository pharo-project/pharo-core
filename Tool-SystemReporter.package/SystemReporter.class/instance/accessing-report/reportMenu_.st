reportMenu: aMenu
	^ aMenu
		addTitle: 'Report' translated;
		add: 'Copy to Clipboard' translated action: #copyReportToClipboard;
		yourself