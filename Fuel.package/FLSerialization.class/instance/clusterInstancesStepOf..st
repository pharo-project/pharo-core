private
clusterInstancesStepOf: aCluster

	encoder encodeClusterClass: aCluster class.
	aCluster clusterSerializeStepWith: encoder.
	aCluster serializeInstancesStepWith: encoder.
	aCluster serializePostInstancesStepWith: encoder.
