as yet unclassified
findFullNameForWriting: aBaseName
	| possible split prefix fpattern now |
	split := directory splitNameVersionExtensionFor: aBaseName.
	fpattern := split first, '*'.
	possible := SortedCollection sortBlock: [ :a :b |
		a first = b first
			ifTrue: [ a second = b second
					ifFalse: [ a second < b second ]
					ifTrue: [ a third fullName size < b third fullName size ]]
			ifFalse: [ a first > b first ] ].
	now := Time totalSeconds.
	prefix := directory pathParts size.
	self allDirectories do: [:dir | | dirScore fileScore parts |
		parts := dir pathParts allButFirst: prefix.
		dirScore := (parts select: [ :part | fpattern match: part ]) size.
		fileScore := (dir entries collect: [ :ent |
			(ent isDirectory not and: [ fpattern match: ent name ])
				ifFalse: [ SmallInteger maxVal ]
				ifTrue: [ now - ent modificationTime ]]).	"minimum age"
		fileScore := fileScore isEmpty ifTrue: [ SmallInteger maxVal  ]
			ifFalse: [ fileScore min ].
		possible add: { dirScore. fileScore. dir } ].
	
	^ (possible first third) / aBaseName