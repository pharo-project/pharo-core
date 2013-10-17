clusterClassForCharacter: aCharacter

	^ aCharacter isOctetCharacter 
		ifTrue: [ FLHookPrimitiveCluster ]
		ifFalse: [ FLFixedObjectCluster ]