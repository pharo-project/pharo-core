serialize/materialize
clusterSerializeStepWith: anEncoder

	super clusterSerializeStepWith: anEncoder.
	anEncoder encodeReferenceTo: theClass.