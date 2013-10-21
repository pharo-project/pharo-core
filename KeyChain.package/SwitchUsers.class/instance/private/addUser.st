addUser
	| user editor w userName newPassword |
	
	userName := self askName.
	(self isValidUsername: userName) 
		ifFalse: [ 
			UIManager default inform: 'Username invalid.'.
			^self ].
	
	user := PharoUser username: userName.
	user unlock ifFalse: [ ^ self ].
	
	w := PasswordInitializationDialogWindow new.
	self window openModal: w.
	
	newPassword := w enteredValue.
	newPassword ifNil: [ ^ self ].
	user setPassword: newPassword.
	
	editor := UserEditor new
				user: user ;
				openDialogWithSpec;
				yourself.
				
	self window openModal: editor window window.
	usersManager contents addUser: user.
	
	users setSelectedItem: user username.