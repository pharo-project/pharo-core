instance creation
rows: rows columns: columns tabulate: aBlock
	"Answer a new Matrix of the given dimensions where
	 result at: i at: j     is   aBlock value: i value: j"
	|a i|

	a := Array new: rows*columns.
	i := 0.
	1 to: rows do: [:row |
		1 to: columns do: [:column |
			a at: (i := i+1) put: (aBlock value: row value: column)]].
	^self rows: rows columns: columns contents: a
