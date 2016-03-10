resetButtonSettingsOn: aBuilder
	<systemsettings>
		
	(aBuilder group: #'resetRules')
		order: 10;
		target: self;
		label: 'Renraku rules';
		parent: #qualityAssistant;
		dialog: [
			SimpleButtonMorph new
				target: ReRuleManager;
				label: 'Reset Renraku rule cache';
				actionSelector: #resetWithInform;
				themeChanged;
				yourself ].