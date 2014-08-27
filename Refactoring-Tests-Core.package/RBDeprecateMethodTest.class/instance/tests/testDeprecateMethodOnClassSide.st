testDeprecateMethodOnClassSide
	| refactoring class |
	refactoring := RBDeprecateMethodRefactoring
		model: RBNamespace new
		deprecateMethod: #someFooMethod
		in: RBLintRuleTest class
		using: #someOtherFooMethod.
	self executeRefactoring: refactoring.
	class := refactoring model classNamed: RBBasicLintRuleTest class name.
	self
		assert:
			(class parseTreeFor: #someFooMethod)
				=
					(RBParser
						parseMethod:
							'someFooMethod
	self 
		deprecated: ''Use someOtherFooMethod instead''
		on: 	''' , Date today asString
								,
									''' 
		in: ''Refactoring-Tests-Core-Data''.
	^ self someOtherFooMethod')