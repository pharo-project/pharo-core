userNameFor: aGroup

	^ self isUnlocked
		ifTrue: [ (groups at: aGroup ifAbsent: [ ^ nil ]) username ]