testInheritedName
	self shouldFail: (RBAbstractInstanceVariableRefactoring 
			variable: 'name'
			class: RBBasicLintRuleTest)