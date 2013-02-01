private
iconFor: anItem
	| manifestBuilder ruleId ruleVersion |
	ruleId := rule class uniqueIdentifierName.
	ruleVersion := rule class identifierMinorVersionNumber.
	^  (checker isFalsePositive: anItem forRuleId:  ruleId versionId: ruleVersion) 
			ifFalse: [(checker isToDo: anItem forRuleId:  ruleId versionId: ruleVersion)
				ifTrue: [ self class wrenchOrangeIcon ]
				ifFalse: [ self class exclamationIcon ] ]