cachedCritics
	^ self propertyValueAt: #critics ifAbsent: [
		self propertyValueAt: #critics put: self critics ]