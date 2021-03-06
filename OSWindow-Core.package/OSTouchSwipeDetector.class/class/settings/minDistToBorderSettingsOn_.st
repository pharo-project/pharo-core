minDistToBorderSettingsOn: aBuilder
	<systemsettings>
	(aBuilder setting: #minDistToBorder)
		target: self;
		label: 'Minimal distance of the fingers to a border (%)';
		description:
				'The distance, in percentage of the screen, that fingers needs to be close to a border to trigger a swipe';
		parent: #swipeGesture