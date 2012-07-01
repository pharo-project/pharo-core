*Collections-arithmetic
preMultiplyByMatrix: m
	"Answer m +* self where m is a Matrix."
	|s|

	nrows = m columnCount ifFalse: [self error: 'dimensions do not conform'].
	^Matrix rows: m rowCount columns: ncols tabulate: [:row :col |
		s := 0.
		1 to: nrows do: [:k | s := (m at: row at: k) * (self at: k at: col) + s].
		s]