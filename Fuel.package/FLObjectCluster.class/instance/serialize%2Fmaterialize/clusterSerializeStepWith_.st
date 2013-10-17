clusterSerializeStepWith: aSerialization

	super clusterSerializeStepWith: aSerialization.
	aSerialization encoder encodeReferenceTo: theClass.