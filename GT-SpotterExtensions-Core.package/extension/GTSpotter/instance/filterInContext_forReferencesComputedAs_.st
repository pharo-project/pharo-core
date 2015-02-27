filterInContext: aSpotterContext forReferencesComputedAs: fileReferencesBlock
	| prefixMatchers split rootDirectory query fullQuery rest |
	fullQuery := aSpotterContext textLowercase.
	split := fullQuery piecesCutWhere: [ :a :b | a = FileSystem disk delimiter ].
	split size < 1
		ifTrue: [ 
			query := fullQuery.
			rootDirectory := FileSystem workingDirectory ]
		ifFalse: [ 
			(split last last = FileSystem disk delimiter)
				ifTrue: [ 
					query := ''.
					rootDirectory := fullQuery asFileReference ]
				ifFalse: [ 
					query := split last.
					rootDirectory := ('' join: split allButLast) asFileReference ] ].
	rootDirectory exists ifFalse: [ ^ OrderedCollection new ].
	query isEmpty ifTrue: [ 
		| all |
		all := fileReferencesBlock value: rootDirectory.
		(all first: (all size min: aSpotterContext itemsLimit)) do: [:reference | aSpotterContext addItem: reference ].
		^ all  ].
	prefixMatchers := OrderedCollection new.
	rest := OrderedCollection new.
	(fileReferencesBlock value: rootDirectory) do: [ :reference | 
			| index |
			index := reference basename findString: query startingAt: 1 caseSensitive: false.
			index >= 1 ifTrue: [ 
				index = 1 
					ifTrue: [ 
						prefixMatchers add: reference.
						prefixMatchers size > aSpotterContext itemsLimit
							ifFalse: [ aSpotterContext addItem: reference ] ]
					ifFalse: [ rest add: reference ] ] ].
	prefixMatchers size < aSpotterContext itemsLimit
		ifTrue: [ (rest first: (aSpotterContext itemsLimit - prefixMatchers size min: rest size)) do: [ :each | aSpotterContext addItem: each ] ].
	^ prefixMatchers , rest