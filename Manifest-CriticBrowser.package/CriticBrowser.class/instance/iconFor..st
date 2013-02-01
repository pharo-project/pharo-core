private
iconFor: anItem
	| manifestBuilder rId rV |
	rId := rule class uniqueIdentifierName.
	rV := rule class identifierMinorVersionNumber.
	

	^  (checker isFalsePositive: anItem forRuleId:  rId versionId: rV) 
			ifFalse: [(checker isToDo: anItem forRuleId:  rId versionId: rV)
				ifTrue: [CriticBrowserIcons wrenchOrangeIcon ]
				ifFalse:[CriticBrowserIcons exclamationIcon]
			]