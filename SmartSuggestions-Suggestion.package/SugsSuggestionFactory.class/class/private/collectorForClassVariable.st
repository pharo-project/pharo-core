collectorForClassVariable 
	^ collectorForClassVariable ifNil: [collectorForClassVariable := self createCollector: #classVarCommand].
