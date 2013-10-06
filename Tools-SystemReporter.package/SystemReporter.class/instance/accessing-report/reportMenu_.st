reportMenu: aMenu
	^ aMenu
		title: 'Report';
		add: 'Copy to Clipboard' action: #copyReportToClipboard;
		yourself.