protocol
setUserNamePassword: usernamePassword forGroup: group

	self isUnlocked
		ifTrue: [ 
			bindings 
				at: group 
				put: usernamePassword.
			^ true ].
	^ false