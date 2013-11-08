removeUser
	| user confirm |
	(user := selectedUser value) ifNil: [ ^ self ].
	
	confirm := UIManager default confirm: 'Are you sure you want to delete ', user username asString, '''s profile?' label: 'Delete'.
	confirm ifFalse: [ ^ self ].
	
	usersManager value removeUser: user.
	usersManager valueChanged