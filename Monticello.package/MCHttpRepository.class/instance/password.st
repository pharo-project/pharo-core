actions
password
	self userAndPasswordFromSettingsDo: [:usr :pwd | ^pwd].

	self user isEmpty ifTrue: [^password ifNil: ['']].

	[password isEmptyOrNil] whileTrue: [
		| answer |
		"Give the user a chance to change the login"
		answer := UIManager default request: 'User name for ', String cr, location
			initialAnswer: self user.
		answer isEmptyOrNil
			ifTrue: [^password]
			ifFalse: [self user: answer].
		
		password := UIManager default requestPassword: 'Password for "', self user, '" at ', String cr, location.
	].

	^ password