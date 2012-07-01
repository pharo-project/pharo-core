menu
removeSelection
	selectionIndex = 0 ifTrue: [^ self changed: #flash].
	object removeKey: (keyArray at: selectionIndex - self numberOfFixedFields).
	selectionIndex := 0.
	contents := ''.
	self calculateKeyArray.
	self changed: #inspectObject.
	self changed: #selectionIndex.
	self changed: #fieldList.
	self changed: #selection.