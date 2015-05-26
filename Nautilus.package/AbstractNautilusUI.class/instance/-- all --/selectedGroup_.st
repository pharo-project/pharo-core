selectedGroup: anObject
	self okToChange
		ifFalse: [ ^ self ].
	self packageWidget resetGroupsSelection.
	anObject ifNotNil: [ self giveFocusTo: self packageWidget ].
	self packageWidget selectGroup: anObject.
	self selectedGroupWithoutChangingSelection: anObject