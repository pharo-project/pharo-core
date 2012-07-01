converting
convertFromWithConverter: converter

	| readStream writeStream c |
	readStream := self readStream.
	writeStream := String new writeStream.
	converter ifNil: [^ self].
	[readStream atEnd] whileFalse: [
		c := converter nextFromStream: readStream.
		c ifNotNil: [writeStream nextPut: c] ifNil: [^ writeStream contents]
	].
	^ writeStream contents
