repositories
directory: aDirectoryOrString
	"Add a file-system repository at aDirectoryOrString."

	| repository |
	repository := (aDirectoryOrString isString and: [ aDirectoryOrString endsWith: '*' ])
		ifTrue: [ 
			((Smalltalk globals
				at: #MCSubDirectoryRepository
				ifAbsent: [ self error: aDirectoryOrString printString , ' is an unsupported repository type' ]) new)
				directory: aDirectoryOrString allButLast asFile;
				yourself ]
		ifFalse: [ 
			(MCDirectoryRepository new)
				directory:
						(aDirectoryOrString isString
								ifTrue: [ aDirectoryOrString asFile ]
								ifFalse: [ aDirectoryOrString ]);
				yourself ].
	self repository: repository