private
analyzeMethod: aMethod
	| associations |
	
	"we don't care so far about extension methods"
	(aMethod category beginsWith: '*')
		ifTrue: [ ^self ].
		
	associations := aMethod literals select: [:each | each isVariableBinding ].
	associations do: [:association || value toAnalyze |
		value := association value.
		(value isKindOf: Class)
			ifTrue: [toAnalyze := value]
			ifFalse:[toAnalyze := value class].
		(self list includes: toAnalyze)
			ifFalse: [dependencies add: toAnalyze].
	]