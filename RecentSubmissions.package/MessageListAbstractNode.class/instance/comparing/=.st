= anotherNode

	anotherNode species = self species
		ifTrue: [^ self item = anotherNode item]
		ifFalse: [^ false].