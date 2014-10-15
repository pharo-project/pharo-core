propertyValueAt: propName
	^ self
		propertyValueAt: propName
		ifAbsent: [ nil ]
		