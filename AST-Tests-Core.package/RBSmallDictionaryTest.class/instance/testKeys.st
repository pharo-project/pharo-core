testing
testKeys
	dict at: 'France' put: 'Paris'.
	dict at: 'Italie' put: 'Rome'.
	self assert: dict keys = #('France' 'Italie')