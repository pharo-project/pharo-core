= anObject
	self == anObject
		ifTrue: [^ true].

	self species == anObject species
		ifFalse: [^ false].

	(anObject isDictionary and: [anObject size = self size])
		ifFalse: [^ false].

	dictionary associationsDo: [:each |
		(anObject at: each key ifAbsent: [^ false]) = each value
			ifFalse: [^ false]].
	^ true.