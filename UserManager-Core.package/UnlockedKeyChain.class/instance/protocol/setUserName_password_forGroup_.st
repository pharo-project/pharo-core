setUserName: user password: pass forGroup: group

	self isUnlocked
		ifTrue: [ 
			groups 
				at: group 
				put: (UsernamePassword 
							username: user 
							password: nil).
			^ true ].
	^ false