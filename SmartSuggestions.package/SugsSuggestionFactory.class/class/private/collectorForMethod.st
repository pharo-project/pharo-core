collectorForMethod 
	^ collectorForMethod ifNil: [collectorForMethod := self createCollector: #methodCommand].
