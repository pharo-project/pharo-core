testDeprecateMethodWithSenders
	| refactoring class |
	refactoring := RBDeprecateMethodRefactoring
		model: RBNamespace new
		deprecateMethod: #resultClass:
		in: RBBasicLintRuleTest
		using: #newResultClass:.
	self executeRefactoring: refactoring.
	class := refactoring model classNamed: #RBBasicLintRuleTest.
	self
		assert:
			(class parseTreeFor: #resultClass:)
				=
					(RBParser
						parseMethod:
							'resultClass: aClass 
	self 
		deprecated: ''Use newResultClass: instead''
		on: 	''' , Date today asString
		,
			''' 
		in: ''Refactoring-Tests-Core-Data''.
	^ self newResultClass: aClass ').
	self
		assert:
			(class parseTreeFor: #initialize)
				=
					(RBParser
						parseMethod:
							'initialize
	super initialize.
	self anInstVar: 1.
	classBlock := [:context :aResult | ].
	methodBlock := [:context :aResult | ].
	self newResultClass: RBSelectorEnvironment')