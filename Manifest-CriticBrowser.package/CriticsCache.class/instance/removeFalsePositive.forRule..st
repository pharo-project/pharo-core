add/remove
removeFalsePositive: aCritic forRule: aRule

	(falsePositives includesKey: aRule) 
		ifFalse: [^ self].
		
	(falsePositiveClasses includes: (aCritic isCompiledMethod 
		ifTrue: [aCritic methodClass theNonMetaClass] 
			ifFalse: [aCritic]))  ifTrue: [^ self].
					
	(falsePositives at:aRule) remove: aCritic ifAbsent: [^ self].
	self updateBrowser
