menus behavior
restrictedBrowse

	self showGroups ifTrue: [ ^ self restrictedBrowseGroup ].

	self selectedClass
		ifNil: [ self restrictedBrowsePackage ]
		ifNotNil: [ self restrictedBrowseClass ].