addNewGroup

	[ self groupsManager createAnEmptyStaticGroup ]
		on: GroupAlreadyExists 
		do:[ :ex | self alertGroupExisting: ex ].
	self updatePackageView.
	