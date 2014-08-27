testDeprecateMethodWithSendersInSubclass
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
			(class parseTreeFor: #junk)
				=
					(RBParser
						parseMethod:
							'junk 
	self 
		deprecated: ''Use run instead''
		on: 	''' , Date today asString
		,
			''' 
		in: ''Refactoring-Tests-Core-Data''.
	^ self run').
	self
		assert:
			((class subclasses at: 1) parseTreeFor: #someDemoMethod)
				=
					(RBParser
						parseMethod:
							'someDemoMethod
	^ self run')