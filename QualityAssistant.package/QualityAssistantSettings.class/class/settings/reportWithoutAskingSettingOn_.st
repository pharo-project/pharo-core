reportWithoutAskingSettingOn: aBuilder
	<systemsettings>
	(aBuilder group: #qa)
		label: 'Quality Assistant';
		with: [
			(aBuilder setting: #reportWithoutAsking) 
				label: 'Report useless without confirmation';
				description: 'If true, then reporting of useless critics will happen imidiately after pressing the button, without the requirement of cunfirmation.';
				parent: #qa ]