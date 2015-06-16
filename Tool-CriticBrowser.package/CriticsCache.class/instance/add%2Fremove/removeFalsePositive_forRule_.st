removeFalsePositive: aCritic forRule: aRule

	(falsePositives includesKey: aRule) 
		ifFalse: [^ self].
	(falsePositiveClasses includes: aCritic criticTheNonMetaclassClass) 
			ifTrue: [^ self].
	(falsePositives at: aRule) remove: aCritic ifAbsent: [^ self].
	self updateBrowser
