parseMethod
	| parseClass |
	
	parseClass := self compilationContext parserClass.

	^self useFaultyForParsing 
		ifTrue: [parseClass parseFaultyMethod: source contents]
		ifFalse: [parseClass parseMethod: source contents]