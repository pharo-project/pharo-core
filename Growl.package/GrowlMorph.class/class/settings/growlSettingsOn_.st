growlSettingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #growl)
		label: 'Growl' translated;  
		parent:#appearance;
		description: 'All settings concerned with the notifications popup look''n feel' translated;
		with: [
			(aBuilder pickOne: #position)
				label: 'Growl position' translated;
				target: self;
				default: #topRight;
				order: 1;
				domainValues: self growlPositionChoices.]