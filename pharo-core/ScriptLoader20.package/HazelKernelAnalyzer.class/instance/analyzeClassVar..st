private
analyzeClassVar: aClass
	"analyze dependencies of class vars"
	| collection |
	collection := aClass classSide classPool.

	collection associations do: [:association || key value toAnalyze |
		key := association key.
		value := association value.
		(value isKindOf: Class)
			ifTrue: [toAnalyze := value]
			ifFalse:[toAnalyze := value class].
		(self list includes: toAnalyze)
			ifFalse:[dependencies add: toAnalyze]
		]