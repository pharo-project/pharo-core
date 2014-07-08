setPassword: aPassword
	| oldPassword |
	(password isNil or: [ self isUnlocked ])
		ifFalse: [ ^ self ].
	oldPassword := password.
	aPassword ifNil: [ password := nil ] ifNotNil: [ password := encryptor encrypt: aPassword ].	"Since the passwords are encoded using the password, if you change the password, you have to re-encrypt the passwords"
	self reEncryptKeysBased: oldPassword