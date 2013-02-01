protocol
setUserName: user password: pass forGroup: group withUnlockPassword: aString

	(encryptor encrypt: aString) = password 
		ifTrue: [ bindings 
					at: group 
					put: (UsernamePassword 
								username: user 
								password: (self encryptPassword: pass)).
								
				^ true ].
	^ false