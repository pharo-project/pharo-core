instance creation
fileNamed: aFileName
	^self file: (FileStream readOnlyFileNamed: aFileName).
