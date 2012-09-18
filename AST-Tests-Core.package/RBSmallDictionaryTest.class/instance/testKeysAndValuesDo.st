testing
testKeysAndValuesDo
	| keys values |
	dict at: 'France' put: 'Paris'.
	dict at: 'Italie' put: 'Rome'.
	keys := OrderedCollection new.
	values := OrderedCollection new.
	dict keysAndValuesDo: [ :key :value | 
		keys add: key.
		values add: value ].
	self assert: keys asArray = #('France' 'Italie').
	self assert: values asArray = #('Paris' 'Rome')