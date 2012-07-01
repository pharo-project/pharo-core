settings
updateFromServerAtStartup
	^ updateFromServerAtStartup ifNil: [updateFromServerAtStartup := false]