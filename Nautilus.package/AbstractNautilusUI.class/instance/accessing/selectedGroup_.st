selectedGroup: anObject

	self okToChange
		ifTrue: [
			self packageWidget resetGroupsSelection.
			anObject ifNotNil: [ self giveFocusTo: self packageWidget ].
			self packageWidget selectGroup: anObject.
			self selectedGroupWithoutChangingSelection: anObject ]