accessing
at: r at: c ifInvalid: v
	"If r,c is a valid index for this matrix, answer the corresponding element.
	 Otherwise, answer v."

	(r between: 1 and: nrows) ifFalse: [^v].
	(c between: 1 and: ncols) ifFalse: [^v].
	^contents at: (r-1)*ncols + c
