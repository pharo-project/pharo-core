rootNodeFromItem: item
	| node |
	
	node := self model rootNodeFor: item.
	
	^ node buildWithSpec