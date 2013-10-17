setNewPassword
	| usr newPassword w |
	
	(usr := user contents) ifNil: [ ^ self ].
	usr unlock ifFalse: [ ^ self ].
	
	w := PasswordInitializationDialogWindow new.
	self window openModal: w.
	
	newPassword := w enteredValue.
	newPassword ifNil: [ ^ self ].
	usr setPassword: newPassword.