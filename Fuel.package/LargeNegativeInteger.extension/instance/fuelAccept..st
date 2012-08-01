*Fuel
fuelAccept: aGeneralMapper
	^ self >= -2147483648
		ifTrue: [ aGeneralMapper  mapAndTraceByClusterName: self to: FLNegative32SmallIntegerCluster ]
		ifFalse: [ aGeneralMapper visitBytesObject: self]