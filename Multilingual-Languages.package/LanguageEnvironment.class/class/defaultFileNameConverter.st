public query
defaultFileNameConverter
	FileNameConverterClass
		ifNil: [FileNameConverterClass := self currentPlatform class fileNameConverterClass].
	^ FileNameConverterClass new