testing-scopes
testMethodScope
	| tree scope |
	tree := self parseMethod: 'foo: arg | tmp |'.
	scope := tree lexicalScope.
	
	self deny: scope isBlockScope.
	self deny: scope isLiteralScope.
	self assert: scope isMethodScope.
	self deny: scope isRootScope.
	self deny: scope isVariableScope.
	
	self assert: scope node = tree.
	
	self assert: (scope lookup: 'arg') isArgumentBinding.
	self assert: (scope lookup: 'arg') scope = scope.
	self assert: (scope lookup: 'arg') name = 'arg'.

	self assert: (scope lookup: 'tmp') isTemporaryBinding.
	self assert: (scope lookup: 'tmp') scope = scope.
	self assert: (scope lookup: 'tmp') name = 'tmp'.

	self should: [ scope lookup: 'something' ] raise: Error.
	self assert: (scope lookup: 'something' ifAbsent: [ #nothing ]) = #nothing 