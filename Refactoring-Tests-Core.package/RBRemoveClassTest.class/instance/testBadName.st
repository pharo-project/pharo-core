failure tests
testBadName
	self 
		shouldFail: (RBRemoveClassRefactoring classNames: #(#RecursiveSelfRule))