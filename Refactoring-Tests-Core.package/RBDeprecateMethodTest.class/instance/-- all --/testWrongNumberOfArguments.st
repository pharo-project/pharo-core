testWrongNumberOfArguments
	self
		shouldFail:
			(RBDeprecateMethodRefactoring
				model: RBNamespace new
				deprecateMethod: #method:with:lots:of:arguments:
				in: RBBasicLintRuleTest
				using: #runOnEnvironment:)