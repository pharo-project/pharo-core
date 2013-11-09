rootNodeFromItem: item
	| node |
	
	node := self rootNodeHolder cull: item.
	node container: self model.
	^ node buildWithSpec