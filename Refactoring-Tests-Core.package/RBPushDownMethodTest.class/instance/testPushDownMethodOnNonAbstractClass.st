failure tests
testPushDownMethodOnNonAbstractClass
	| refactoring |
	refactoring := RBPushDownMethodRefactoring pushDown: #(#yourself)
				from: Object.
	self shouldFail: refactoring