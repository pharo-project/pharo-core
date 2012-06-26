accessing method dictionary
standardMethodHeaderFor: aSelector
	| args |
	args := (1 to: aSelector numArgs)	collect:[:i| 'arg', i printString].
	args size = 0 ifTrue:[^aSelector asString].
	args size = 1 ifTrue:[^aSelector,' arg1'].
	^String streamContents:[:s|
		(aSelector findTokens:':') with: args do:[:tok :arg|
			s nextPutAll: tok; nextPutAll:': '; nextPutAll: arg; nextPutAll:' '.
		].
	].
