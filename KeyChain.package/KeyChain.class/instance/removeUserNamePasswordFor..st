protocol
removeUserNamePasswordFor: aGroup

	^ self isUnlocked
		ifTrue: [ bindings removeKey: aGroup ]