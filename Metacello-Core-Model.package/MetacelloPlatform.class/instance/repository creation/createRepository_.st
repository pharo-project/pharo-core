createRepository: aRepositorySpec

	| type |
	type := aRepositorySpec type.
	type = 'http'
		ifTrue: [^ MCHttpRepository
				location: aRepositorySpec description
				user: aRepositorySpec username
				password: aRepositorySpec password].
	type = 'directory'
		ifTrue: [^ MCDirectoryRepository new
				directory: aRepositorySpec description asFileReference ].
	type = 'dictionary'
		ifTrue: [	| description headerSize globalName |	
			description := aRepositorySpec description.
			headerSize := 'dictionary://' size.
			globalName := (description copyFrom: headerSize + 1 to: description size) asSymbol.
 			^Smalltalk at: globalName ifAbsent: [Smalltalk at: globalName put: MCDictionaryRepository new ]].
	^ nil