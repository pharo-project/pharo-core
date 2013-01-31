testing-bindings
testMethodArgumentBinding
	| tree binding |
	tree := self parseMethod: 'foo: arg'.
	binding := tree arguments first variableBinding.
	
	self assert: binding isArgumentBinding.
	self deny: binding isContextBinding.
	self deny: binding isInstanceBinding.
	self deny: binding isLiteralBinding.
	self deny: binding isSelfBinding.
	self deny: binding isSuperBinding.
	self deny: binding isTemporaryBinding.
	self deny: binding isUndeclaredBinding.
	
	self deny: binding isAccessed.
	self assert: binding accessors isEmpty.	
	self deny: binding isRead.
	self assert: binding readers isEmpty.
	self deny: binding isWritten.
	self assert: binding writers isEmpty.
	self assert: binding isReadonly.
	
	self assert: binding name = 'arg'.
	self assert: binding printString isString.
	self assert: binding node = tree arguments first.
	self assert: binding scope = tree lexicalScope