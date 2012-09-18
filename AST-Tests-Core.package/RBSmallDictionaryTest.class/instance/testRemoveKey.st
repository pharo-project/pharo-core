testing
testRemoveKey
	dict at: #a put: 1.
	dict at: #b put: 2.
	self assert: (dict keys size) = 2.
	self assert: (dict removeKey: #a) = 1.
	self assert: (dict keys size) = 1.
	self assert: (dict at: #a ifAbsent: [ true ]).
	self assert: (dict at: #b) = 2.
	self should: [ dict removeKey: #a ] raise: Error