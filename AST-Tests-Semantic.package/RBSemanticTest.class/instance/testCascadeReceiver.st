testing-fixtures
testCascadeReceiver
	| tree receiver receiver1 receiver2 |
	tree := self parseExpression: 'self foo; bar'.
	receiver := tree receiver.
	receiver1 := tree messages first receiver.
	receiver2 := tree messages last receiver.
	
	self assert: receiver variableBinding = receiver1 variableBinding.
	self assert: receiver variableBinding = receiver2 variableBinding