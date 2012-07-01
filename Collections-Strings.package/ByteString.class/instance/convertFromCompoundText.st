converting
convertFromCompoundText

	| readStream writeStream converter |
	readStream := self readStream.
	writeStream := String new writeStream.
	converter := CompoundTextConverter new.
	converter ifNil: [^ self].
	[readStream atEnd] whileFalse: [
		writeStream nextPut: (converter nextFromStream: readStream)].
	^ writeStream contents
