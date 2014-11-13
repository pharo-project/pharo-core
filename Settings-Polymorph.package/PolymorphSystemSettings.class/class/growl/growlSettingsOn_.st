growlSettingsOn: aBuilder

	(aBuilder group: #growl)
		label: 'Growl';  
		description: 'All settings concerned with the look''n feel of your system';
		with: [
			(aBuilder pickOne: #growlPosition)
				label: 'Growl position';
				target: self;
				default: #topRight;
				order: 1;
				domainValues: self growlPositionChoices.]