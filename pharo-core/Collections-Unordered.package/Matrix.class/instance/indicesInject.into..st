enumerating
indicesInject: start into: aBlock
	|current|

	current := start.
	1 to: nrows do: [:row |
		1 to: ncols do: [:column |
			current := aBlock value: current value: row value: column]].
	^current