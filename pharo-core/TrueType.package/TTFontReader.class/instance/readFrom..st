public
readFrom: aStream

	| fontData headerEntry maxProfileEntry nameEntry indexLocEntry charMapEntry glyphEntry horzHeaderEntry horzMetricsEntry kerningEntry glyphOffset cmap numHMetrics indexToLocFormat |

	"Read the raw font byte data"
	aStream binary.
	fontData := aStream contents asByteArray.
	fontDescription := TTFontDescription new.

	"Search the tables required to build the font"
	(headerEntry := self getTableDirEntry: 'head' from: fontData) == nil ifTrue:[
		^self error:'This font does not have a header table'].
	(maxProfileEntry := self getTableDirEntry: 'maxp' from: fontData) == nil ifTrue:[
		^self error:'This font does not have a maximum profile table'].
	(nameEntry := self getTableDirEntry: 'name' from: fontData) == nil ifTrue:[
		^self error:'This font does not have a name table'].
	(indexLocEntry := self getTableDirEntry: 'loca' from: fontData) == nil ifTrue:[
		^self error:'This font does not have a relocation table'].
	(charMapEntry := self getTableDirEntry: 'cmap' from: fontData) == nil ifTrue:[
		^self error:'This font does not have a character map table'].
	(glyphEntry := self getTableDirEntry: 'glyf' from: fontData) == nil ifTrue:[
		^self error:'This font does not have a glyph table'].
	(horzHeaderEntry := self getTableDirEntry: 'hhea' from: fontData) == nil ifTrue:[
		^self error:'This font does not have a horizontal header table'].
	(horzMetricsEntry := self getTableDirEntry: 'hmtx' from: fontData) == nil ifTrue:[
		^self error:'This font does not have a horizontal metrics table'].
	(kerningEntry := self getTableDirEntry: 'kern' from: fontData) == nil ifTrue:[
		self crTrace: 'This font does not have a kerning table'].


	"Process the data"
	indexToLocFormat := self processFontHeaderTable: headerEntry.
	self processMaximumProfileTable: maxProfileEntry.
	self processNamingTable: nameEntry.
	glyphOffset := self processIndexToLocationTable: indexLocEntry format: indexToLocFormat.
	cmap := self processCharacterMappingTable: charMapEntry.
	(cmap == nil or:[cmap value == nil])
		ifTrue:[^self error:'This font has no suitable character mappings'].
	self processGlyphDataTable: glyphEntry offsets: glyphOffset.
	numHMetrics := self processHorizontalHeaderTable: horzHeaderEntry.
	self processHorizontalMetricsTable: horzMetricsEntry length: numHMetrics.
	kerningEntry isNil 
		ifTrue:[kernPairs := #()]
		ifFalse:[self processKerningTable: kerningEntry].
	charMap := self processCharMap: cmap.
	fontDescription setGlyphs: glyphs mapping: charMap.
	fontDescription setKernPairs: kernPairs.
	^fontDescription