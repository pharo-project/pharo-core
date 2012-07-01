private
getGlyphFlagsFrom: entry size: nPts
	"Read in the flags for this glyph.  The outer loop gathers the flags that
	are actually contained in the table.  If the repeat bit is set in a flag
	then the next byte is read from the table; this is the number of times
	to repeat the last flag.  The inner loop does this, incrementing the
	outer loops index each time."
	| flags index repCount flagBits |
	flags := ByteArray new: nPts.
	index := 1.
	[index <= nPts] whileTrue:[
		flagBits := entry nextByte.
		flags at: index put: flagBits.
		(flagBits bitAnd: 8) = 8 ifTrue:[
			repCount := entry nextByte.
			repCount timesRepeat:[
				index := index + 1.
				flags at: index put: flagBits]].
		index := index + 1].
	^flags