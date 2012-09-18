testing
testValuesDo
	| values |
	dict at: 'France' put: 'Paris'.
	dict at: 'Italie' put: 'Rome'.
	values := OrderedCollection new.
	dict valuesDo: [ :each | values add: each ]..
	self assert: values asArray = #('Paris' 'Rome')