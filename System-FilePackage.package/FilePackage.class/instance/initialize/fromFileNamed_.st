fromFileNamed: aName
	
	fullName := aName.
	FileStream 
		readOnlyFileNamed: aName 
		do: [ :aStream |
			aStream setConverterForCode.
			self fileInFrom: aStream] 