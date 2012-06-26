enumerating
withIndicesInject: start into: aBlock
	|i current|

	i := 0.
	current := start.
	1 to: nrows do: [:row |
		1 to: ncols do: [:column |
			current := aBlock value: current value: (contents at: (i := i+1)) 
							  value: row value: column]].
	^current