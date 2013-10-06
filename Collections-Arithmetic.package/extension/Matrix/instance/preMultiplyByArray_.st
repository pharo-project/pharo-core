preMultiplyByArray: a
	"Answer a +* self where a is an Array."

	nrows = 1 ifFalse: [self error: 'dimensions do not conform'].
	^Matrix rows: a size columns: ncols tabulate: [:row :col |
		(a at: row) * (contents at: col)]
