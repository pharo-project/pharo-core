testing-bindings
testUndeclaredBinding
	| tree binding |
	tree := self parseExpression: '[ undecl ]'.
	binding := tree body statements first variableBinding.
	
	self deny: binding isArgumentBinding.
	self deny: binding isContextBinding.
	self deny: binding isInstanceBinding.
	self deny: binding isLiteralBinding.
	self deny: binding isSelfBinding.
	self deny: binding isSuperBinding.
	self deny: binding isTemporaryBinding.
	self assert: binding isUndeclaredBinding.
	
	self assert: binding isAccessed.
	self deny: binding accessors isEmpty.	
	self deny: binding isRead.
	self assert: binding readers isEmpty.
	self deny: binding isWritten.
	self assert: binding writers isEmpty.
	self deny: binding isReadonly.
	
	self assert: binding name = 'undecl'.
	self assert: binding printString isString.
	self assert: binding node = tree body statements first.
	self assert: binding scope notNil