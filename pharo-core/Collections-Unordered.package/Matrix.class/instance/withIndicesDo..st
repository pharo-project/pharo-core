enumerating
withIndicesDo: aBlock
	|i|

	i := 0.
	1 to: nrows do: [:row |
		1 to: ncols do: [:column |
			aBlock value: (contents at: (i := i+1)) value: row value: column]].
