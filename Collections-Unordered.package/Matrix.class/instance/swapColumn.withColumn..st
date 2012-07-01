accessing rows/columns
swapColumn: anIndex withColumn: anotherIndex
	|a b|

	a := self indexForRow: 1 andColumn: anIndex.
	b := self indexForRow: 1 andColumn: anotherIndex.
	nrows timesRepeat: [
		contents swap: a with: b.
		a := a + ncols.
		b := b + ncols].
