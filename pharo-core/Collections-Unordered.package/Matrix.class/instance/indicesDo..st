enumerating
indicesDo: aBlock
	1 to: nrows do: [:row |
		1 to: ncols do: [:column |
			aBlock value: row value: column]].