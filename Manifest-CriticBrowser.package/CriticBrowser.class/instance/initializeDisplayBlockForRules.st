initialization
initializeDisplayBlockForRules

	rulesModel displayBlock: [:rule || falsePositives toDos total text |
		falsePositives := (numberOfFalsePositives at: rule ifAbsent: [ 0 ]) .
		toDos := (numberOfToDos at: rule ifAbsent: [ 0 ]) .
		total :=   (numberOfProblems at: rule ifAbsent: [ 0 ]) .
		text := String streamContents: [:s |
			s 
				<< rule name 
				<< ' (FP: ' 
				<< falsePositives asString 
				<< ', ToDo: '
				<< toDos asString 
				<< ', Total: ' 
				<<  total asString 
				<<  ')' ].
		total isZero
			ifTrue: [ text ] 
			ifFalse: [
				falsePositives >= total
					ifTrue: [ text asText makeAllColor: criticModel falsePositiveColor ]
					ifFalse: [ text asText makeAllColor: criticModel defaultColor ]]]