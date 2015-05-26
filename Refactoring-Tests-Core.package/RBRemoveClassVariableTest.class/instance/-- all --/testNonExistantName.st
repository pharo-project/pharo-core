testNonExistantName
	self shouldFail: (RBRemoveClassVariableRefactoring 
			variable: #RecursiveSelfRule1
			class: RBTransformationRuleTest)