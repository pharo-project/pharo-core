initialization
initDisplayCritic: aCritic forRuleId: ruleId versionId: versionId 
	
	| ret | 
	
	ret := self formatCritic: aCritic.
	
	^ (checker isFalsePositive: aCritic forRuleId:  ruleId versionId: versionId) 
			ifTrue: [ret asStringMorph color: self falsePositiveColor ]
			ifFalse: [(checker isToDo: aCritic forRuleId:  ruleId versionId: versionId)
				ifTrue: [ret asStringMorph color: self toDoColor]
				ifFalse:[
					ret asStringMorph color: self defaultColor]]
	
		