shuffledBy: aRandom
	^self class rows: nrows columns: ncols contents: (contents copy shuffleBy: aRandom)