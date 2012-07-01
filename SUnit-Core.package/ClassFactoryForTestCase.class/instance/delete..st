cleaning
delete: aClass
	aClass isObsolete ifTrue: [^self].
	aClass removeFromChanges.
	aClass removeFromSystemUnlogged
