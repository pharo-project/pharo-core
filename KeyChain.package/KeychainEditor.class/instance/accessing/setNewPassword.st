setNewPassword
	| it newPassword w |
	
	(it := keychainEditingWrapper value) ifNil: [ ^ self ].
	it keychain unlock ifFalse: [ ^ self ].
	
	w := PasswordInitializationDialogWindow new.
	self window openModal: w.
	
	newPassword := w enteredValue.
	newPassword ifNil: [ ^ self ].
	
	password := it keychain encryptPassword: newPassword