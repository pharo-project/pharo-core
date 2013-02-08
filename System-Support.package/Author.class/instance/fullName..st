accessing
fullName: aString
	fullName := aString.
	
	 Smalltalk globals at: #UsersManager 
		ifPresent: [:usersManager | usersManager default currentUser setUserName: aString forGroup: #author].