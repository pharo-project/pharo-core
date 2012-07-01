processing
processKerningTable: entry
	"Extract the kerning information for pairs of glyphs."
	| covLow covHigh nKernPairs kp |
	entry skip: 2. "Skip table version"
	entry skip: 2. "Skip number of sub tables -- we're using the first one only"
	entry skip: 2. "Skip current subtable number"
	entry skip: 2. "Skip length of subtable"
	covHigh := entry nextByte.
	covLow := entry nextByte.

	"Make sure the format is right (kerning table and format type 0)"
	((covLow bitAnd: 2) = 2 or:[ covHigh ~= 0]) ifTrue:[^false].
	nKernPairs := entry nextUShort.
	entry skip: 2. "Skip search range"
	entry skip: 2. "Skip entry selector"
	entry skip: 2. "Skip range shift"
	kernPairs := Array new: nKernPairs.
	1 to: nKernPairs do:[:i|
		kp := TTKernPair new.
		kp left: entry nextUShort.
		kp right: entry nextUShort.
		kp value: entry nextShort.
		kernPairs at: i put: kp].
	^true