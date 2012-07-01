converting
convertFromSystemString

	| readStream writeStream converter |
	readStream := self readStream.
	writeStream := String new writeStream.
	converter := LanguageEnvironment defaultSystemConverter.
	converter ifNil: [^ self].
	[readStream atEnd] whileFalse: [
		writeStream nextPut: (converter nextFromStream: readStream)].
	^ writeStream contents
