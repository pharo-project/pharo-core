selecting
addEntry: aKey
	object at: aKey put: nil.
	self calculateKeyArray.
	selectionIndex := self numberOfFixedFields + (keyArray indexOf: aKey).
	self changed: #inspectObject.
	self changed: #selectionIndex.
	self changed: #fieldList.
	self update