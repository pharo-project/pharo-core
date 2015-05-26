addUser: aPharoUser
	
	users add: aPharoUser.
	users size = 1
		ifTrue: [ self setCurrentUser: aPharoUser ].
	aPharoUser  keychain
			username: aPharoUser username.

	^ aPharoUser