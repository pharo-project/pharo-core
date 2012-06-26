serialize/materialize
clusterMaterializeStepWith: aDecoder

	super clusterMaterializeStepWith: aDecoder.
	theClass := aDecoder nextEncodedReference.
