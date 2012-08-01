visiting
visitCompiledMethod: aCompiledMethod
	aCompiledMethod isInstalled ifFalse: [FLNotInstalledMethod signalWithSelector: aCompiledMethod selector].
	self mapAndTraceByClusterName: aCompiledMethod to: FLGlobalCompiledMethodCluster