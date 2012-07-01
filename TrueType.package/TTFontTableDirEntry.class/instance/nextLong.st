accessing
nextLong

	| value |
	value := fontData longAt: offset bigEndian: true.
	offset := offset + 4.
	^value