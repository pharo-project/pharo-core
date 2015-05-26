mapAndTraceInstanceSideGlobal: aClassOrTrait

	(self clusterKeyedByClusterName: FLGlobalClassCluster)
		add: aClassOrTrait traceWith: analysis
