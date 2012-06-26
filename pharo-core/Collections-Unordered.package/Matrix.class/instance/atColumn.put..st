accessing rows/columns
atColumn: column put: aCollection
	|p|

	aCollection size = nrows ifFalse: [self error: 'wrong column size'].
	p := (self indexForRow: 1 andColumn: column)-ncols.
	aCollection do: [:each | contents at: (p := p+ncols) put: each].
	^aCollection
