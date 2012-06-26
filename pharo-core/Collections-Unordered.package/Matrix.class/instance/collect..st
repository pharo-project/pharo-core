enumerating
collect: aBlock
	"Answer a new matrix with transformed elements; transformations should be independent."

	^self class rows: nrows columns: ncols contents: (contents collect: aBlock)