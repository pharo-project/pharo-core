accessing
itemsList: aCollection
	" Here I assume the collection provided is not wrapped "
	
	itemsList := aCollection collect: [:each | TickSelectionValueHolder item: each selected: self defaultValue wrapBlockOrSelector: wrapBlockOrSelector]