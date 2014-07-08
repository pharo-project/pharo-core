removeUserNamePasswordFor: aGroup

	^ self isUnlocked
		ifTrue: [ groups removeKey: aGroup ]