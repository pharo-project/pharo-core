protocol
setEncryptorDecryptor: anEncryptorDecryptor

	self isUnlocked 	
		ifTrue: [ | oldDecryptor |
			oldDecryptor := encryptorDecryptor.
			encryptorDecryptor := anEncryptorDecryptor .
			bindings associations do: [:assoc || oldUsernamePassword string |
				oldUsernamePassword := bindings at: assoc key.
				string := oldDecryptor decrypt: oldUsernamePassword password base: password.
				bindings at: assoc key put: ( UsernamePassword username: oldUsernamePassword username password: (self encryptPassword: string) )]]