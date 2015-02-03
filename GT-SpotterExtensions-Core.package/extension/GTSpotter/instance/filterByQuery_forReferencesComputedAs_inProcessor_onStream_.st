filterByQuery: originalQuery forReferencesComputedAs: fileReferencesBlock inProcessor: processor onStream: stream
	| prefixMatchers split rootDirectory query fullQuery rest |
	fullQuery := originalQuery trimBoth asLowercase.
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
		(all first: (all size min: 5)) do: [:reference | stream addObject: reference inProcessor: processor].
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
						prefixMatchers size > 5
							ifFalse: [ stream addObject: reference inProcessor: processor ] ]
					ifFalse: [ rest add: reference ] ] ].
	prefixMatchers size < 5
		ifTrue: [ (rest first: (5 - prefixMatchers size min: rest size)) do: [ :each | stream addObject: each inProcessor: processor ] ].
	^ prefixMatchers , rest