lintChecks
	^ self 
		rules: (RBBasicLintRuleTest protocols collect: 
			[ :each | 
			self 
				ruleFor: RBBasicLintRuleTest
				protocol: each ])
		name: 'Lint checks'