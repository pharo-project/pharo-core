converting
convertFromCompoundText

	| readStream converter |
	readStream := self readStream.
	^ self class new: self size streamContents: [ :writeStream|
		converter := CompoundTextConverter new.
		converter ifNil: [^ self].
		[readStream atEnd] whileFalse: [
			writeStream nextPut: (converter nextFromStream: readStream)]].
