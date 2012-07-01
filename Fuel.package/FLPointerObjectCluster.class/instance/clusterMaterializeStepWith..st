serialize/materialize
clusterMaterializeStepWith: aDecoder

	super clusterMaterializeStepWith: aDecoder.
	variablesMapping := aDecoder variablesMappingFor: theClass.