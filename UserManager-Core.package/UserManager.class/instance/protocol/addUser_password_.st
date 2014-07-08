addUser: aName password: aPassword
	| user |
	
	user := (PharoUser username: aName).
	user keychain setPassword: aPassword.
			
	^ self addUser: user