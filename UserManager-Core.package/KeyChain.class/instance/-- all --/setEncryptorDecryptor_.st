setEncryptorDecryptor: anEncryptorDecryptor
	| oldDecryptor |
	self isUnlocked
		ifFalse: [ ^ self ].
	oldDecryptor := encryptorDecryptor.
	encryptorDecryptor := anEncryptorDecryptor.
	groups associations
		do: [ :assoc | 
			| oldUsernamePassword string |
			oldUsernamePassword := groups at: assoc key.
			string := oldDecryptor decrypt: oldUsernamePassword password base: password.
			groups
				at: assoc key
				put: (UsernamePassword username: oldUsernamePassword username password: (self encryptPassword: string)) ]