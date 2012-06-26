serialize/materialize
clusterSerializeStepWith: anEncoder

	super clusterSerializeStepWith: anEncoder.
	anEncoder encodePositiveInteger: objects size.