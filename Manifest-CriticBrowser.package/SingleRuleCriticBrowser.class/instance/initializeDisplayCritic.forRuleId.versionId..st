initialization
initializeDisplayCritic: aCritic forRuleId: ruleId versionId: versionId 
	
	| criticRepresentation | 
	self logCr: '/'.
	
	criticRepresentation := (self formatCritic: aCritic) asMorph .
	
	^ (checker isFalsePositive: aCritic forRuleId:  ruleId versionId: versionId) 
			ifTrue: [ criticRepresentation color: self falsePositiveColor ]
			ifFalse: [ (checker isToDo: aCritic forRuleId:  ruleId versionId: versionId)
						ifTrue: [ criticRepresentation color: self toDoColor ]
						ifFalse: [ criticRepresentation color: self defaultColor ]]