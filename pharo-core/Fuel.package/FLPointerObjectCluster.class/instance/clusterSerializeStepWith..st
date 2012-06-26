serialize/materialize
clusterSerializeStepWith: anEncoder

	super clusterSerializeStepWith: anEncoder.
	variablesMapping serializeOn: anEncoder.