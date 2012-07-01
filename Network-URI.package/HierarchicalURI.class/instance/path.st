accessing
path
"	^self schemeSpecificPart isEmpty
		ifTrue: ['/']
		ifFalse: [self schemeSpecificPart]"
	^self schemeSpecificPart