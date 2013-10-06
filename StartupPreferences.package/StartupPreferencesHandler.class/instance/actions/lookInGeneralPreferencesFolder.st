lookInGeneralPreferencesFolder

	^ self 
		lookInFolder: StartupPreferencesLoader preferencesGeneralFolder 
		forFilesMatching: '*.st'.