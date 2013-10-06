testBadName
	self 
		shouldFail: (RBRemoveClassRefactoring classNames: #(#RecursiveSelfRule))