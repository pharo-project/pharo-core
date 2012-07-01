private
rowAndColumnForIndex: index
	|t|

	t := index - 1.
	^(t // ncols + 1)@(t \\ ncols + 1)