delete: aBehavior
	aBehavior isObsolete ifTrue: [^self].
	aBehavior removeFromChanges.
	aBehavior removeFromSystemUnlogged
