initialize
initializePresenter 

	self registerGravatarAddressChanges.
	self registerUserNameChanges.	
	
	usersManager whenChangedDo: [:um | editPermissions enabled: (um currentUser canEditUser) ].
