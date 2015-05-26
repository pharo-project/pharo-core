askPasswordForKeyChain: attempt
	| string |
	
	password ifNil: [ 
		^ nextLockTime := DateAndTime new + self timeBetweenUnlocks ].
	string := (UIManager default requestPassword: 'Password for the keychain for ', username asString ,' (', (self maxAttemptsNumber - attempt) asString ,' tries left)').
	string ifNil: [ ^ self ].		
	(encryptor encrypt: string) = password 
		ifFalse: [ self logCr: (encryptor encrypt: string). self logCr: password. ^ self ].

	 nextLockTime := DateAndTime new + self timeBetweenUnlocks.