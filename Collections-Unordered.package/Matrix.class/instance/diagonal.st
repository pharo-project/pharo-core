accessing rows/columns
diagonal
	"Answer (1 to: (nrows min: ncols)) collect: [:i | self at: i at: i]"
	|i|

	i := ncols negated.
	^(1 to: (nrows min: ncols)) collect: [:j | contents at: (i := i + ncols + 1)]