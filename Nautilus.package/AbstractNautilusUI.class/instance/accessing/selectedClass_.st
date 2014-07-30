selectedClass: aClass
	self okToChangeBoth
		ifFalse: [ ^ self ].
	self resetClassesListSelection.
	aClass ifNotNil: [ self giveFocusTo: self classWidget ].
	self selectedClassWithoutChangingSelection: aClass