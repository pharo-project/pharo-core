tests
testAsMutator

	self assert: #x asMutator = #x:.
	self assert: #x asMutator isSymbol