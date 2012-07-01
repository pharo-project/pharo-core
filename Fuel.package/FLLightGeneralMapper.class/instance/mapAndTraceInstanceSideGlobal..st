protected-mapping
mapAndTraceInstanceSideGlobal: aClassOrTrait

	(globalInstanceSideCluster ifNil: [
		globalInstanceSideCluster := self clusterKeyedByClusterName: FLGlobalClassCluster ])
		add: aClassOrTrait traceWith: analysis
