withServerDo: block
	| server staticFileServerDelegate |
	server := ZnServer on: 1700 + 10 atRandom.
	[ 
		(staticFileServerDelegate := ZnStaticFileServerDelegate new)
			prefixFromString: 'local-files'; 
			directory: ZnFileSystemUtils defaultDirectory;
			mimeTypeExpirations: ZnStaticFileServerDelegate defaultMimeTypeExpirations. 
		server delegate: staticFileServerDelegate.
		server start.
		self assert: server isRunning & server isListening.
		block cull: server
	] 
		ensure: [ server stop ]