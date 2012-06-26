tests
testTwoCompiledMethodsReferencingSameClassVariable
	| materialized |
	materialized := self resultOfSerializeAndMaterialize: {self class >> #classVariableForTesting. self class >> #classVariableForTesting: }.
	self assert: (materialized first isEqualRegardlessTrailerTo: (self class >> #classVariableForTesting)).
	self assert: (materialized second isEqualRegardlessTrailerTo: (self class >> #classVariableForTesting:)).
	
	