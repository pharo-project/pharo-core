protected-mapping
clusterClassForSmallInteger: aSmallInteger
    
	((aSmallInteger bitAnd: 16rFFFF) = aSmallInteger)
		ifTrue: [ ^ FLUInt16Cluster ].

	^ aSmallInteger > 0 
		ifTrue: [ FLPositiveSmallIntegerCluster ] 
		ifFalse: [ FLNegativeSmallIntegerCluster ]
		