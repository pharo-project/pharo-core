testing-scopes
testRootScope
	| scope |
	scope := RBRootScope new.
	
	self deny: scope isBlockScope.
	self deny: scope isLiteralScope.
	self deny: scope isMethodScope.
	self assert: scope isRootScope.
	self deny: scope isVariableScope.
	
	self assert: (scope lookup: 'self') isSelfBinding.
	self assert: (scope lookup: 'self') scope = scope.

	self assert: (scope lookup: 'super') isSuperBinding.
	self assert: (scope lookup: 'super') scope = scope.

	self assert: (scope lookup: 'thisContext') isContextBinding.
	self assert: (scope lookup: 'thisContext') scope = scope.

	self should: [ scope lookup: 'something' ] raise: Error.
	self assert: (scope lookup: 'something' ifAbsent: [ #nothing ]) = #nothing 