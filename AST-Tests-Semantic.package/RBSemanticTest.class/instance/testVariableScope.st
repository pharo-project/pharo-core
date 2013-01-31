testing-scopes
testVariableScope
	| scope |
	scope := RBVariableScope
		owner: RBRootScope new
		class: RBMessageNode.
	
	self deny: scope isBlockScope.
	self deny: scope isLiteralScope.
	self deny: scope isMethodScope.
	self deny: scope isRootScope.
	self assert: scope isVariableScope.
	
	self assert: scope theClass = RBMessageNode.
	
	RBMessageNode allInstVarNames keysAndValuesDo: [ :index :name |
		self assert: (scope lookup: name) isInstanceBinding.
		self assert: (scope lookup: name) scope = scope.
		self assert: (scope lookup: name) name = name.
		self assert: (scope lookup: name) index = index ].
	
	self assert: (scope lookup: 'self') scope = scope owner.
	self assert: (scope lookup: 'super') scope = scope owner.
	self assert: (scope lookup: 'thisContext') scope = scope owner.

	self should: [ scope lookup: 'something' ] raise: Error.
	self assert: (scope lookup: 'something' ifAbsent: [ #nothing ]) = #nothing 