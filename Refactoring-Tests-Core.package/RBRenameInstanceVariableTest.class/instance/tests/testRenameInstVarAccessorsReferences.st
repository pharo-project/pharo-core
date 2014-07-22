testRenameInstVarAccessorsReferences
	| refactoring class |
	refactoring := RBRenameInstanceVariableRefactoring rename: 'anInstVar' to: 'whatever' in: RBBasicLintRuleTest.
	self executeRefactoring: refactoring.
	class := refactoring model classNamed: #RBBasicLintRuleTest.
	self assert: (class directlyDefinesInstanceVariable: 'whatever').
	self deny: (class directlyDefinesInstanceVariable: 'anInstVar').
	self assert: (class definesMethod: #whatever).
	self assert: (class definesMethod: #whatever:).
	self deny: (class definesMethod: #anInstVar).
	self deny: (class definesMethod: #anInstVar:).
	self assert: (class parseTreeFor: #classBlock) = (RBParser parseMethod: 'classBlock ^ self whatever + 5').
	self
		assert:
			(class parseTreeFor: #initialize)
				=
					(RBParser
						parseMethod:
							'initialize
								super initialize.
	self whatever: 1.
	classBlock := [:context :aResult | ].
	methodBlock := [:context :aResult | ].
	self resultClass: RBSelectorEnvironment')