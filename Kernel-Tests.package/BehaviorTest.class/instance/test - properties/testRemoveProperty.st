testRemoveProperty

	self class propertyValueAt: #testKeySelector put: 1.
		
	self class removeProperty: #testKeySelector.
	self
		assert: (self class propertyValueAt: #testKeySelector)
		equals: nil.