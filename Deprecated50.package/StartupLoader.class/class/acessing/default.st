default
	MigrationInfoDisplayed ifNil: [
		MigrationInfoDisplayed := true.
		self openLabel: 'NOTICE: StartupLoader deprecation'.
		].
	^ StartupPreferencesLoader default