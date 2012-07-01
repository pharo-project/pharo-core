accessing
nextULong

	| value |
	value := fontData unsignedLongAt: offset bigEndian: true.
	offset := offset + 4.
	^value