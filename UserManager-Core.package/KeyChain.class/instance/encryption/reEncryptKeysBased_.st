reEncryptKeysBased: aFormerBase

	groups associations do: [:assoc || oldUsernamePassword string |
				oldUsernamePassword := groups at: assoc key.
				string := encryptorDecryptor decrypt: oldUsernamePassword password base: aFormerBase.
				groups at: assoc key put: ( UsernamePassword username: oldUsernamePassword username password: (self encryptPassword: string) )]