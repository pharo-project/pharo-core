activation
activate
	self loadSourceFiles: (self commandLine allFilesWithExtension: 'st').
	self installSourceFiles.
	(self commandLine hasOption: 'quit')
		ifTrue: [ self exitSucess ].