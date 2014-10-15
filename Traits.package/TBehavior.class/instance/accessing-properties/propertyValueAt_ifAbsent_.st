propertyValueAt: propName ifAbsent: aBlock
	^ self properties
		at: propName
		ifAbsent: aBlock
		