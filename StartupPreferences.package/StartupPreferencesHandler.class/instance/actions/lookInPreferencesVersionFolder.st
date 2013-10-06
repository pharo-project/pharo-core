lookInPreferencesVersionFolder

	^ self 
		lookInFolder: StartupPreferencesLoader preferencesVersionFolder 
		forFilesMatching: '*.st'.