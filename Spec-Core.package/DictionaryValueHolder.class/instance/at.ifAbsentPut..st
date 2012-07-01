protocol
at: key ifAbsentPut: aBlock 

	^ self at: key ifAbsent: [self at: key put: aBlock value]