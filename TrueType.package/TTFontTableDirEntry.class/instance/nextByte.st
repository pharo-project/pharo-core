accessing
nextByte

	| value |
	value := fontData byteAt: offset.
	offset := offset + 1.
	^value