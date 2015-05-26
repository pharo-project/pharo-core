preferences
	^ self directoryFromEnvVariableNamed: 'APPDATA' or: [ self home ]