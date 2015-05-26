collectorForLiteral
	^ collectorForLiteral ifNil: [collectorForLiteral := self createCollector: #literalCommand].
