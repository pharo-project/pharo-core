serialize/materialize
clusterSerializeStepWith: aSerialization

	super clusterSerializeStepWith: aSerialization.
	aSerialization encoder encodeReferenceTo: theClass.