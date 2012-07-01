accessing
selectedGroupWithoutChangingSelection: anObject

	self okToChange
		ifTrue: [
			anObject ifNil: [ groupsSelection removeAll ].
			self model selectedGroup: anObject.
			groupsSelection at: anObject put: true.
			self selectedClass: nil.
			self updateClassView ]