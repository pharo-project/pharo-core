activation
activate
	self loadSourceFiles: (self commandLine allFilesWithExtension: 'fuel').
	self installSourceFiles.
	(self commandLine hasOption: 'save')
		ifTrue: [
			ThreadSafeTranscript install.
			Smalltalk addDeferredStartupAction: [
				Smalltalk snapshot: true andQuit: true.
				NonInteractiveTranscript new install.
			]
		].
	(self commandLine hasOption: 'quit')
		ifTrue: [ self exitSuccess ].