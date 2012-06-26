settings
finderUISettingsOn: aBuilder
	<systemsettings>
		(aBuilder group: #finderUI)
		target: self;
		label: 'Finder' translated;
		description: 'Settings related to the finder' translated;
			with: [
				(aBuilder setting: #searchedTextListMaxSize)
				label: 'Size of the History' translated]