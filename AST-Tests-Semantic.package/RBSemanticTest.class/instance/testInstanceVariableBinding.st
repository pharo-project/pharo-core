testing-bindings
testInstanceVariableBinding
	| tree binding |
	tree := self parseExpression: 'instVar'.
	binding := tree variableBinding.
	
	self deny: binding isArgumentBinding.
	self deny: binding isContextBinding.
	self assert: binding isInstanceBinding.
	self deny: binding isLiteralBinding.
	self deny: binding isSelfBinding.
	self deny: binding isSuperBinding.
	self deny: binding isTemporaryBinding.
	self deny: binding isUndeclaredBinding.
	
	self assert: binding isAccessed.
	self deny: binding accessors isEmpty.	
	self deny: binding isRead.
	self assert: binding readers isEmpty.
	self deny: binding isWritten.
	self assert: binding writers isEmpty.
	self deny: binding isReadonly.
	
	self assert: binding name = 'instVar'.
	self assert: binding printString isString.
	self assert: binding index = (self class allInstVarNames indexOf: 'instVar').
	self assert: binding scope notNil