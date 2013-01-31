testing-fixtures
testShadowedVariables
	| tree variable1 variable2 variable3 variable4 |
	tree := self parseExpression: '| a | [ :a | a ]. a'.
	variable1 := tree temporaries first.
	variable2 := tree statements first arguments first.
	variable3 := tree statements first body statements first.
	variable4 := tree statements last.
	
	self deny: variable1 variableBinding isShadowing.
	self assert: variable2 variableBinding isShadowing.
	self assert: variable3 variableBinding isShadowing.
	self deny: variable4 variableBinding isShadowing.
	
	self assert: variable1 variableBinding = variable4 variableBinding.
	self deny: variable1 variableBinding = variable3 variableBinding.
	self deny: variable2 variableBinding = variable4 variableBinding.
	self assert: variable2 variableBinding = variable3 variableBinding.
	