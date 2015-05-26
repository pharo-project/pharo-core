testDeprecateMethod
	| refactoring class |
	refactoring := RBDeprecateMethodRefactoring
		model: RBNamespace new
		deprecateMethod: #checkMethod:
		in: RBBasicLintRuleTest
		using: #foobar.
	self executeRefactoring: refactoring.
	class := refactoring model classNamed: #RBBasicLintRuleTest.
	self
		assert:
			(class parseTreeFor: #checkMethod:)
				=
					(RBParser
						parseMethod:
							'checkMethod: aSmalllintContext 
	self 
		deprecated: ''Use foobar instead''
		on: 	''' , Date today asString
		,
			'''
		in: ''Refactoring-Tests-Core-Data''.
	^ self foobar' ).