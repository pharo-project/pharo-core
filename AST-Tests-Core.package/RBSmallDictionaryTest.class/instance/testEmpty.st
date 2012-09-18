testing
testEmpty
	dict at: 'France' put: 'Paris'.
	dict at: 'Italie' put: 'Rome'.
	dict empty.
	self assert: dict isEmpty.
	self deny: (dict includesKey: 'France').
	self deny: (dict includesKey: 'Italie').
	self assert: dict keys isEmpty.
	self assert: dict values isEmpty