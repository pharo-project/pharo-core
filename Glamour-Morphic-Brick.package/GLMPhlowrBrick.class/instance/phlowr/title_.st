title: aStringOrSymbolOrBlock
	
	self setParameter: #title toValue: ((aStringOrSymbolOrBlock isSymbol | aStringOrSymbolOrBlock isBlock)
		ifTrue: [ aStringOrSymbolOrBlock ]
		ifFalse: [ [ aStringOrSymbolOrBlock asString ] ])