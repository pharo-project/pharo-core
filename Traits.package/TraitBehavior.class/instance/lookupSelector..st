accessing method dictionary
lookupSelector: selector
	^(self includesSelector: selector)
		ifTrue: [self compiledMethodAt: selector]
		ifFalse: [nil]