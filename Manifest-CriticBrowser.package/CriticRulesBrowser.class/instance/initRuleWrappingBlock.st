initialization
initRuleWrappingBlock

	rulesModel displayBlock: [:rule | 
		| fp td total text|
		
		
		fp := (countOfFalsePositive at: rule ifAbsent: [0]) .
		td := (countOfToDo at: rule ifAbsent: [0]) .
		total :=   (countOfProblem at: rule ifAbsent: [0]) .
		text := rule name, ' (FP: ' , fp asString, ', ToDo: ' ,td asString, ', Total: ',  total asString,  ')'.
		(total = 0)
			ifTrue: [ text ] 
			ifFalse: [
				fp >= total
					ifTrue: [text asStringMorph color: criticModel falsePositiveColor]
					 ifFalse: [text asStringMorph color: criticModel defaultColor]]
				
						
	]