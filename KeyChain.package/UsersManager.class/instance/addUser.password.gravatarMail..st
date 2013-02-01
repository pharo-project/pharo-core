protocol
addUser: aName password: aPassword gravatarMail: email
	| user |
	
	user := self addUser: aName password: aPassword.
	user avatar: email.
	user 
		setUserName: email
		forGroup: #gravatar