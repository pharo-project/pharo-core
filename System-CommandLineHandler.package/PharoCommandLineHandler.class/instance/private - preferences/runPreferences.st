runPreferences

	Smalltalk at: #SystemSettingsPersistence ifPresent: [:persistence | 
		persistence resumeSystemSettings].
	StartupPreferencesLoader default loadFromDefaultLocations
