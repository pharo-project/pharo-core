failure tests
testRemoveReferenced
	self shouldFail: (RBRemoveClassRefactoring classNames: #(#RBBasicLintRuleTest ))