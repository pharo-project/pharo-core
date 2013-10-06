methodsFor: aClass

	^ self methods select: [:e | e methodClass = aClass ].