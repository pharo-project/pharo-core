testPullUpVariableNotDefined
	self shouldFail: (RBPullUpInstanceVariableRefactoring 
			variable: 'notDefinedVariable'
			class: RBLintRuleTest)