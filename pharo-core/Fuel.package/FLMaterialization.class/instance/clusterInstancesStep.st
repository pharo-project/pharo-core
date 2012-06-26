private
clusterInstancesStep

	| aCluster |
	aCluster := decoder nextEncodedClusterClass newMaterializing.
	aCluster clusterMaterializeStepWith: decoder.
	aCluster materializeInstancesStepWith: decoder.
	self registerAll: aCluster objects.
	aCluster materializePostInstancesStepWith: decoder.
	clusters add: aCluster.