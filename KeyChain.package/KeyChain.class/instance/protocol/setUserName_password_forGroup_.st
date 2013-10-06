setUserName: user password: pass forGroup: group

	self isUnlocked
		ifTrue: [ 
			groups 
				at: group 
				put: (UsernamePassword 
							username: user 
							password: (self encryptPassword: pass)).
			^ true ].
	^ false