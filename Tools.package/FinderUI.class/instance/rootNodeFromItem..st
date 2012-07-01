t - accessing
rootNodeFromItem: anItem
	| node |
	
	node := super rootNodeFromItem: anItem.
	node class = FinderSingleMethodNode
		ifTrue: [ | item |
			item := (self resultDictionary at: anItem) first >> anItem.
			node item: item ].
	^ node