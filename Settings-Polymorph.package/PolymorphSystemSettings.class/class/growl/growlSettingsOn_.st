growlSettingsOn: aBuilder

	(aBuilder group: #growl)
		label: 'Growl' translated;  
		description: 'All settings concerned with the look''n feel of your system' translated;
		with: [
			(aBuilder pickOne: #growlPosition)
				label: 'Growl position' translated;
				target: self;
				default: #topRight;
				order: 1;
				domainValues: self growlPositionChoices.]