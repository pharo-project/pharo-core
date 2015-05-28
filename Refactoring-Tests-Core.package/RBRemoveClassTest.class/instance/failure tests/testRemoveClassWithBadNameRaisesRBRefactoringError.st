testRemoveClassWithBadNameRaisesRBRefactoringError 
	self 
		shouldFail: (RBRemoveClassRefactoring classNames: #(#RecursiveSelfRule))