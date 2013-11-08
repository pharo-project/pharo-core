usersManager: anUsersManager

	usersManager value: anUsersManager.
	anUsersManager users whenChangedDo: [ usersManager valueChanged ]