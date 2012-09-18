testing-bindings
testUndeclaredHandled
	| seen tree binding |
	seen := false.
	tree := [ self parseExpression: '[ undecl ]' ]
		on: RBUndeclaredVariableNotification
		do: [ :err |
			seen := true.
			err resume: (RBLiteralBinding binding: (err node name -> 123)) ].
	self assert: seen.
	binding := tree body statements first variableBinding.
	
	self deny: binding isArgumentBinding.
	self deny: binding isContextBinding.
	self deny: binding isInstanceBinding.
	self assert: binding isLiteralBinding.
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
	
	self assert: binding name = 'undecl'.
	self assert: binding printString isString.
	self assert: binding binding key = 'undecl'.
	self assert: binding binding value = 123.
	self assert: binding scope notNil