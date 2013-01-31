testing-bindings
testSpecialContextBinding
	| tree binding |
	tree := self parseExpression: 'thisContext'.
	binding := tree variableBinding.
	
	self deny: binding isArgumentBinding.
	self assert: binding isContextBinding.
	self deny: binding isInstanceBinding.
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
	self assert: binding isReadonly.
	
	self assert: binding name = 'thisContext'.
	self assert: binding printString isString.
	self deny: binding scope isNil