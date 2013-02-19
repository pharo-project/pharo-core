visiting
visitGlobalSend: anObject name: globalName selector: aSymbol

	(self clusterKeyedByObjectClass: FLGlobalSendCluster class: anObject class)
		add: anObject name: globalName selector: aSymbol traceWith: analysis
