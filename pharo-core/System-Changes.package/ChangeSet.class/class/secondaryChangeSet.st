enumerating
secondaryChangeSet
	"Answer a likely change set to use as the second initial one in a Dual Change Sorter.  "

	AllChangeSets size = 1 ifTrue: [^ AllChangeSets first].
	AllChangeSets last == ChangeSet current
		ifTrue: 	[^ AllChangeSets at: (AllChangeSets size - 1)]
		ifFalse:	[^ AllChangeSets last]