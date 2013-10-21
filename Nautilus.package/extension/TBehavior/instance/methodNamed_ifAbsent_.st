methodNamed: aSelector ifAbsent: aBlock

	^ self methodDict 
		at: aSelector
		ifAbsent: aBlock