associationAt: key ifAbsent: aBlock 
	^ key -> (self at: key ifAbsent: [ ^aBlock value ])