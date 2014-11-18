growlSettingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #appearance)
		with: [
	(aBuilder group: #growl)
		label: 'Growl' translated;  
		description: 'All settings concerned with the notifications popup look''n feel' translated;
		with: [
			(aBuilder pickOne: #position)
				label: 'Growl position' translated;
				target: self;
				default: #topRight;
				order: 1;
				domainValues: self growlPositionChoices.]]