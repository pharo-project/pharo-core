fileReaderServicesForFile: fullName suffix: suffix
	<fileService>
	| services |
	services := OrderedCollection new.
	(FileStream isSourceFileSuffix: suffix) | (suffix = '*')
		ifTrue: [ services add: self serviceBrowseChangeFile ].
	(suffix = 'changes') | (suffix = '*')
		ifTrue: [ services add: self serviceBrowseDotChangesFile ].
	^services