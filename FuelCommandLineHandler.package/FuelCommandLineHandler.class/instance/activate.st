activation
activate
	self loadSourceFiles: (self commandLine allFilesWithExtension: 'fuel').
	self installSourceFiles.
	(self commandLine hasOption: 'quit')
		ifTrue: [ self exitSucess ].