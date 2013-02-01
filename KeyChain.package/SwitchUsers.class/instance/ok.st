private
ok

	selectedUser contents ifNotNil: [:user |
		user unlock ifFalse: [ ^ false ].
		usersManager contents setCurrentUser: user.
		user lock ]