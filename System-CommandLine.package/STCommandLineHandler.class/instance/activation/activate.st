activate
	self activateHelp
		ifTrue: [  ^ self ].
	
	self loadSourceFiles: (self commandLine allFilesWithExtension: 'st').
	self installSourceFiles.
	
	self end