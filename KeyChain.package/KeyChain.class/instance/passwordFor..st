private
passwordFor: aUserName

	^ self isUnlocked
		ifTrue: [ self decryptPassword: (bindings at: aUserName) ]