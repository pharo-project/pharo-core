as yet unclassified
readFrom: fontData fromOffset: offset at: encodingTag
	| headerEntry maxProfileEntry nameEntry indexLocEntry charMapEntry glyphEntry horzHeaderEntry horzMetricsEntry kerningEntry glyphOffset cmap numHMetrics indexToLocFormat fontDescription0 fontDescription1 array result |
	"Search the tables required to build the font"
	(headerEntry := self getTableDirEntry: 'head' from: fontData offset: offset) == nil
		ifTrue: [ ^ self error: 'This font does not have a header table' ].
	(maxProfileEntry := self getTableDirEntry: 'maxp' from: fontData offset: offset) == nil
		ifTrue: [ ^ self error: 'This font does not have a maximum profile table' ].
	(nameEntry := self getTableDirEntry: 'name' from: fontData offset: offset) == nil
		ifTrue: [ ^ self error: 'This font does not have a name table' ].
	(indexLocEntry := self getTableDirEntry: 'loca' from: fontData offset: offset) == nil
		ifTrue: [ ^ self error: 'This font does not have a relocation table' ].
	(charMapEntry := self getTableDirEntry: 'cmap' from: fontData offset: offset) == nil
		ifTrue: [ ^ self error: 'This font does not have a character map table' ].
	(glyphEntry := self getTableDirEntry: 'glyf' from: fontData offset: offset) == nil
		ifTrue: [ ^ self error: 'This font does not have a glyph table' ].
	(horzHeaderEntry := self getTableDirEntry: 'hhea' from: fontData offset: offset) == nil
		ifTrue: [ ^ self error: 'This font does not have a horizontal header table' ].
	(horzMetricsEntry := self getTableDirEntry: 'hmtx' from: fontData offset: offset) == nil
		ifTrue: [ ^ self error: 'This font does not have a horizontal metrics table' ].
	(kerningEntry := self getTableDirEntry: 'kern' from: fontData offset: offset) == nil
		ifTrue: [ 
			self crTrace: 'This font does not have a kerning table' ].	"Process the data"
	indexToLocFormat := self processFontHeaderTable: headerEntry.
	self processMaximumProfileTable: maxProfileEntry.
	self processNamingTable: nameEntry.
	glyphOffset := self processIndexToLocationTable: indexLocEntry format: indexToLocFormat.
	cmap := self processCharacterMappingTable: charMapEntry.
	(cmap == nil or: [ cmap value == nil ])
		ifTrue: [ ^ self error: 'This font has no suitable character mappings' ].
	self processGlyphDataTable: glyphEntry offsets: glyphOffset.
	numHMetrics := self processHorizontalHeaderTable: horzHeaderEntry.
	self processHorizontalMetricsTable: horzMetricsEntry length: numHMetrics.
	kerningEntry isNil
		ifTrue: [ kernPairs := #() ]
		ifFalse: [ self processKerningTable: kerningEntry ].
	array := self processCharMap: cmap.
	fontDescription0 := fontDescription shallowCopy.
	fontDescription1 := fontDescription shallowCopy.
	fontDescription0 setGlyphs: (array at: 1) mapping: nil.
	fontDescription1 setGlyphs: (array at: 2) mapping: nil.	"fontDescription setKernPairs: kernPairs."
	result := OrderedCollection new.
	(encodingTag isNil or: [ encodingTag = 0 ])
		ifTrue: [ ^ Array with: fontDescription1 ].
	result add: fontDescription0.
	encodingTag - 1 timesRepeat: [ result add: nil ].
	result add: fontDescription1.
	^ result asArray