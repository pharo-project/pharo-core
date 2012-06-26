accessing
nextShort

	| value |
	value := fontData shortAt: offset bigEndian: true.
	offset := offset + 2.
	^value