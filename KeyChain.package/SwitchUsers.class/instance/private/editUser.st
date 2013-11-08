editUser
	| user editor |
	
	(user := selectedUser value) ifNil: [ ^ self ].
	usersManager value
		ifNil: [ user unlock ifFalse: [ ^ self ]]
		ifNotNil: [:uM | uM currentUser canEditUser 
						ifFalse: [ user unlock ifFalse: [ ^ self ]]].
	
	editor := UserEditor new
				user: user;
				usersManager: usersManager value;
				openDialogWithSpec;
				yourself.
				
	self window openModal: editor window window.
	usersManager valueChanged