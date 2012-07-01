selecting
refreshView
	| i |
	i := selectionIndex.
	self calculateKeyArray.
	selectionIndex := i.
	self changed: #fieldList.
	self changed: #contents.