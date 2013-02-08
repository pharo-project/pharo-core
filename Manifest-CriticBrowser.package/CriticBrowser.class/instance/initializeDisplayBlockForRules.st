initialization
initializeDisplayBlockForRules

	rulesModel displayBlock: [:rule || falsePositives toDos total text |
		falsePositives := (cache falsePositiveOf: rule) size.
		toDos :=(cache toDosOf: rule) size.
		total :=  (cache criticsOf: rule) size.
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