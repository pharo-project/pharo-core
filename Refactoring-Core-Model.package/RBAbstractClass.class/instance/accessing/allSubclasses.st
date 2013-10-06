allSubclasses
	| allSubclasses index |
	index := 1.
	allSubclasses := self subclasses asOrderedCollection.
	[index <= allSubclasses size] whileTrue: 
			[allSubclasses addAll: (allSubclasses at: index) subclasses.
			index := index + 1].
	^allSubclasses