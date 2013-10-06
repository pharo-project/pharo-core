fileNamed: aFileName
	^self file: (FileStream readOnlyFileNamed: aFileName).
