tests
testRemoveClass
	| refactoring |
	refactoring := RBRemoveClassRefactoring classNames: (Array with: ('RBFoo' , 'LintRuleTest') asSymbol).
	self executeRefactoring: refactoring.
	self assert: (refactoring model classNamed: ('RBFoo' , 'LintRuleTest') asSymbol) isNil.
	self assert: (refactoring model classNamed: #RBTransformationRuleTest) superclass = (refactoring model classNamed: #RBLintRuleTest)