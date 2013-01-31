testing
testIncludesKey
	dict at: 'Italie' put: nil.
	dict at: 'France' put: 'Paris'.
	self assert: (dict includesKey: 'Italie').
	self assert: (dict includesKey: 'France').
	self deny: (dict includesKey: 'Switzerland')