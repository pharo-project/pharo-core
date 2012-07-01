as yet unclassified
packageForFileNamed: aString
	^ self packageCache at: aString ifAbsentPut: [self versionReaderForFileNamed: aString do: [:r | r package]]