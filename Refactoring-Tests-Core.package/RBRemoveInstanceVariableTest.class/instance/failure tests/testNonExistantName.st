testNonExistantName
	self shouldFail: (RBRemoveInstanceVariableRefactoring 
			variable: 'name1'
			class: RBLintRuleTest)