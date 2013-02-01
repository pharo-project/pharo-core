private
removeUser
	| user confirm |
	(user := selectedUser contents) ifNil: [ ^ self ].
	
	confirm := UIManager default confirm: 'Are you sure you want to delete ', user username asString, '''s profile?' label: 'Delete'.
	confirm ifFalse: [ ^ self ].
	
	usersManager contents removeUser: user.
	usersManager contentsChanged