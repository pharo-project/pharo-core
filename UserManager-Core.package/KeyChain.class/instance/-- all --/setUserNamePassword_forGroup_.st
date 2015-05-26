setUserNamePassword: usernamePassword forGroup: group

	self isUnlocked
		ifTrue: [ 
			groups 
				at: group 
				put: usernamePassword.
			^ true ].
	^ false