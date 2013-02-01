accessing
fullName: aString
	fullName := aString.
	UsersManager default currentUser setUserName: aString forGroup: #author