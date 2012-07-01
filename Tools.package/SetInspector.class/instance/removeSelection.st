menu
removeSelection
	(selectionIndex <= object class instSize) ifTrue: [^ self changed: #flash].
	object remove: self selection.
	selectionIndex := 0.
	contents := ''.
	self changed: #inspectObject.
	self changed: #fieldList.
	self changed: #selection.
	self changed: #selectionIndex.