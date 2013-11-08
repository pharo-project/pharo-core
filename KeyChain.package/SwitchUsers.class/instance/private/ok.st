ok

	selectedUser value ifNotNil: [:user |
		user unlock ifFalse: [ ^ false ].
		usersManager value setCurrentUser: user.
		user lock ]