private
instancesStep

	clusters do: [ :aCluster | aCluster registerIndexesOn: encoder objectsIndexes ].
	clusters do: [ :aCluster | self clusterInstancesStepOf: aCluster ]