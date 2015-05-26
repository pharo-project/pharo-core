testDeprecateMethodWithLotsOfArguments
	| refactoring class |
	refactoring := RBDeprecateMethodRefactoring
		model: RBNamespace new
		deprecateMethod: #method:with:lots:of:arguments:
		in: RBBasicLintRuleTest
		using: #resetResult.
	self executeRefactoring: refactoring.
	class := refactoring model classNamed: #RBBasicLintRuleTest.
	self
		assert:
			(class parseTreeFor: #method:with:lots:of:arguments:)
				=
					(RBParser
						parseMethod:
							'method: anObject1 with: anObject2 lots: anObject3 of: anObject4 arguments: anObject5 
	self 
		deprecated: ''Use resetResult instead''
		on: 	''' , Date today asString
		,
			''' 
		in: ''Refactoring-Tests-Core-Data''.
	^ self resetResult').