rows: rowNumber columns: columnNumber tabulate: aBlock
	"Answer a new Matrix of the given dimensions where
	 result at: i at: j is aBlock value: i value: j"
	|a i|
	a := Array new: rowNumber*columnNumber.
	i := 0.
	1 to: rowNumber do: [:row |
		1 to: columnNumber do: [:column |
			a at: (i := i+1) put: (aBlock value: row value: column)]].
	^ self rows: rowNumber columns: columnNumber contents: a
