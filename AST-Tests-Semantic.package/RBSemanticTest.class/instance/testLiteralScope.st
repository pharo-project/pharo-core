testing-scopes
testLiteralScope
	| scope literals |
	scope := RBLiteralScope
		owner: RBRootScope new
		class: RBMessageNode.
	
	self deny: scope isBlockScope.
	self assert: scope isLiteralScope.
	self deny: scope isMethodScope.
	self deny: scope isRootScope.
	self deny: scope isVariableScope.
	
	self assert: scope theClass = RBMessageNode.
	
	literals := OrderedCollection new.
	literals addAll: (RBMessageNode allClassVarNames).
	literals addAll: (RBProgramNode allSubclasses collect: [ :each | each name ]).
	literals do: [ :name |
		self assert: (scope lookup: name) isLiteralBinding.
		self assert: (scope lookup: name) scope = scope.
		self assert: (scope lookup: name) name = name ].
	
	self assert: (scope lookup: 'self') scope = scope owner.
	self assert: (scope lookup: 'super') scope = scope owner.
	self assert: (scope lookup: 'thisContext') scope = scope owner.

	self should: [ scope lookup: 'something' ] raise: Error.
	self assert: (scope lookup: 'something' ifAbsent: [ #nothing ]) = #nothing 