setNewPassword
	| usr newPassword w |
	
	(usr := user value) ifNil: [ ^ self ].
	usr unlock ifFalse: [ ^ self ].
	
	w := PasswordInitializationDialogWindow new.
	self window openModal: w.
	
	newPassword := w enteredValue.
	newPassword ifNil: [ ^ self ].
	usr setPassword: newPassword.