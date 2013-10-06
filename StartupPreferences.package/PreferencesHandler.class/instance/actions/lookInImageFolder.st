lookInImageFolder

	^ self 
		lookInFolder: FileSystem workingDirectory 
		forFilesMatching: StartupLoader startupScriptName.