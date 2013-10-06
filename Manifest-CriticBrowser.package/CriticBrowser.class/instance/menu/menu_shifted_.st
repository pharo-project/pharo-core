menu: aMenu shifted: aBoolean

	aMenu
		add: 'Browse rule' translated
			target: self
			selector: #browseRule;
		add: 'Reapply this rule'
			target: self
		selector: #reapplyThisRule;
		addLine;
		add: 'Ban from selected packages' translated
			target: self
			selector: #addRuleToFalsePositive;
		add: 'Unban from selected packages' translated
			target: self
			selector: #removeRuleToFalsePositive.
	 ^ aMenu