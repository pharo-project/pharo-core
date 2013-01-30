converting
convertFromSystemString

	| readStream converter |
	readStream := self readStream.
	^ self class new: self size streamContents: [ :writeStream|
		converter := LanguageEnvironment defaultSystemConverter.
		converter ifNil: [^ self].
		[readStream atEnd] whileFalse: [
			writeStream nextPut: (converter nextFromStream: readStream)]].
