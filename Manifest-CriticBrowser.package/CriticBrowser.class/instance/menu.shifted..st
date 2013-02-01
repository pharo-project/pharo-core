menu
menu: aMenu shifted: aBoolean

	aMenu
		add: 'Browse rule' translated
			target: self
			selector: #browseRule;
		add: 'Do not understand this rule' translated
			target: self
			selector: #doNotUnderstandThisRule;
		add: 'This rule contains a bug' translated
			target: self
			selector: #bugRule;
		add: 'Reapply this rule'
			target: self
			selector: #reapplyThisRule;
		addLine;
		add: 'Ban this rule for all packages' translated
			target: self
			selector: #addRuleToFalsePositive;
		add: 'Unban this rule for all packages' translated
			target: self
			selector: #removeRuleToFalsePositive.
	^ aMenu