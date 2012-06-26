accessing
nextUShort

	| value |
	value := fontData unsignedShortAt: offset bigEndian: true.
	offset := offset + 2.
	^value