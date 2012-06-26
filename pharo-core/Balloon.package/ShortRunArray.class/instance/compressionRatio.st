accessing
compressionRatio
	"Return the compression ratio.
	The compression ratio is computed based
	on how much space would be needed to
	store the receiver in a ShortIntegerArray"
	^(self size asFloat * 0.5) "Would need only half of the amount in ShortIntegerArray"
		/ (self runSize max: 1)