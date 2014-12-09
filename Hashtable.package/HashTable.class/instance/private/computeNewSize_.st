computeNewSize: minimum
	^minimum max: (self table size * 2) + 1.
	