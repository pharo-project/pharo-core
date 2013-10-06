remove: aClass from: aGroup

	^ aGroup
		ifAllowed: [ aGroup remove: aClass ]
		ifNot: [ self openReadOnlyError ]