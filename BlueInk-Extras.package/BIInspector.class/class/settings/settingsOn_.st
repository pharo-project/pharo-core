settingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #blueInkFormatterExtra)
		target: self;
		parent: #blueInkFormatter;
		label: 'BlueInk Extra';
		dialog: [ self dialogOpenBIInspector ]

	