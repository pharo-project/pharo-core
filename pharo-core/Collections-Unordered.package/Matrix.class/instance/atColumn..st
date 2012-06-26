accessing rows/columns
atColumn: column
	|p|

	p := (self indexForRow: 1 andColumn: column)-ncols.
	^(1 to: nrows) collect: [:row | contents at: (p := p+ncols)]
