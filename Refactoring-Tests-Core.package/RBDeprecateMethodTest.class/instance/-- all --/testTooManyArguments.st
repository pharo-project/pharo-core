testTooManyArguments
	self
		shouldFail:
			(RBDeprecateMethodRefactoring
				model: RBNamespace new
				deprecateMethod: #foobar
				in: RBBasicLintRuleTest
				using: #runOnEnvironment:)