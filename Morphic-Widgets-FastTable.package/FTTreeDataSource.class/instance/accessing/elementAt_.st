elementAt: index
	| tmpIndex |
	tmpIndex := index.
	items
		do:
			[ :item | 
			| size |
			size := item numberOfVisibleChildren + 1.
			tmpIndex <= size
				ifTrue: [ ^ item selfOrChildAt: tmpIndex ]
				ifFalse: [ tmpIndex := tmpIndex - size ] ]