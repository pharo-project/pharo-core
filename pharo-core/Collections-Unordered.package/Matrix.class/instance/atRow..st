accessing rows/columns
atRow: row
	(row between: 1 and: nrows)
		ifFalse: [self error: '1st subscript out of range'].
	^contents copyFrom: (row-1)*ncols+1 to: row*ncols