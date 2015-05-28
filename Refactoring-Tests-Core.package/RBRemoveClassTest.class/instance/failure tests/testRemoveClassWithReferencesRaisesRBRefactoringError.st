testRemoveClassWithReferencesRaisesRBRefactoringError
	self shouldFail: (RBRemoveClassRefactoring classNames: #(#RBBasicLintRuleTest ))