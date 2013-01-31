testing
testKeysDo
	| keys |
	dict at: 'France' put: 'Paris'.
	dict at: 'Italie' put: 'Rome'.
	keys := OrderedCollection new.
	dict keysDo: [ :each | keys add: each ].
	self assert: keys asArray = #('France' 'Italie')