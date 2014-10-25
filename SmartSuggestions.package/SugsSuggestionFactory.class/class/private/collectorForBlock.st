collectorForBlock
	^ collectorForBlock ifNil: [collectorForBlock:= self createCollector: #blockCommand].
