testing
testTraitRemoval
	| selectorsFromT1 |
	selectorsFromT1 := self t1 selectors.
	self c1 addToComposition: self t1.
	self assert: (self c1 selectors includesAllOf: selectorsFromT1).
	self assert: (self c1 organization allMethodSelectors includesAllOf: selectorsFromT1).
	self c1 removeFromComposition: self t1.
	self deny: (self c1 selectors includesAnyOf: selectorsFromT1).
	self deny: (self c1 organization allMethodSelectors includesAnyOf: selectorsFromT1)