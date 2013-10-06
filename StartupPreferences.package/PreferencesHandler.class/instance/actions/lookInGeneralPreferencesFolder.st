lookInGeneralPreferencesFolder

	^ self 
		lookInFolder: StartupLoader preferencesGeneralFolder 
		forFilesMatching: '*.st'.