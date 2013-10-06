testPullUpReferencesInstVar
	self shouldFail: (RBPullUpMethodRefactoring 
			pullUp: #(#checkClass: )
			from: RBBasicLintRuleTest)