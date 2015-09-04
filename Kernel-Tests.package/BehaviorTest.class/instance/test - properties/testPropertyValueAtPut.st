testPropertyValueAtPut

	| testValue |
	
	testValue := Date today.
	self class propertyValueAt: #testKeySelector put: testValue.
	self
		assert: (self class propertyValueAt: #testKeySelector)
		equals: testValue.
	self class removeProperty: #testKeySelector