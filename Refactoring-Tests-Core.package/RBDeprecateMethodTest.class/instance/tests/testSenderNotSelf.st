testSenderNotSelf
	| refactoring class |
	refactoring := RBDeprecateMethodRefactoring
		model: RBNamespace new
		deprecateMethod: #junk
		in: RBLintRuleTest
		using: #run.
	self executeRefactoring: refactoring.
	class := refactoring model classNamed: #RBLintRuleTest.
	self
		assert:
			(class parseTreeFor: #someOtherDemoMethod)
				=
					(RBParser
						parseMethod:
							'someOtherDemoMethod
	| temp |
	temp := self new.
	^ temp junk').
	self
		deny:
			(class parseTreeFor: #someOtherDemoMethod)
				=
					(RBParser
						parseMethod:
							'someOtherDemoMethod
	| temp |
	temp := self new.
	^ temp run')