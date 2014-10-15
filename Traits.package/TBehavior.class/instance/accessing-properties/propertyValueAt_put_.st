propertyValueAt: propName put: propValue
	^ self properties
		at: propName
		ifAbsentPut: propValue
		