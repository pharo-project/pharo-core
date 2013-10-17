usersManager: anUsersManager

	usersManager contents: anUsersManager.
	anUsersManager users whenChangedDo: [ usersManager contentsChanged ]