reportMenu: aMenu
	^ aMenu
		addTitle: 'Report' ;
		add: 'Copy to Clipboard' action: #copyReportToClipboard;
		yourself