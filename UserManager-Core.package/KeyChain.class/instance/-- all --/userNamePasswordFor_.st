userNamePasswordFor: aGroup

	^ self isUnlocked
		ifTrue: [ | oldUsernamePassword |
			oldUsernamePassword := groups at: aGroup ifAbsent: [ ^ nil ].
			UsernamePassword username: oldUsernamePassword username password: (self decryptPassword: (oldUsernamePassword password)) ]