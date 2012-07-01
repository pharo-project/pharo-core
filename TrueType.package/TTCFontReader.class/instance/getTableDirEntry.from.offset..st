as yet unclassified
getTableDirEntry: tagString from: fontData offset: offset
	"Find the table named tagString in fontData and return a table directory entry for it."

	| nTables pos currentTag tag |
	nTables := fontData shortAt: 5 + offset bigEndian: true.
	tag := ByteArray new: 4.
	1 to: 4 do:[:i| tag byteAt: i put: (tagString at: i) asInteger].
	tag := tag longAt: 1 bigEndian: true.
	pos := 13 + offset.
	1 to: nTables do:[:i|
		currentTag := fontData longAt: pos bigEndian: true.
		currentTag = tag ifTrue:[^TTFontTableDirEntry on: fontData at: pos].
		pos := pos+16].
	^nil