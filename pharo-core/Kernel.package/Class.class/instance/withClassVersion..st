fileIn/Out
withClassVersion: aVersion
	aVersion = self classVersion ifTrue:[^self].
	^self error: 'Invalid class version'