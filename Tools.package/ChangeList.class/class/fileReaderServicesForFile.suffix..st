filein/out
fileReaderServicesForFile: fullName suffix: suffix
	| services |
	services := OrderedCollection new.
	(FileStream isSourceFileSuffix: suffix) | (suffix = '*')
		ifTrue: [ services add: self serviceBrowseChangeFile ].
	(suffix = 'changes') | (suffix = '*')
		ifTrue: [ services add: self serviceBrowseDotChangesFile ].
	(fullName asLowercase endsWith: '.cs.gz') | (suffix = '*')
		ifTrue: [ services add: self serviceBrowseCompressedChangeFile ].
	^services