accessing
absolutePath
	^self schemeSpecificPart isEmpty
		ifTrue: ['/']
		ifFalse: [self schemeSpecificPart]