actions
lookInImageDirectory

	| folder |
	
	folder := FileSystem workingDirectory.
	folder exists ifFalse: [ ^ nil ].
	
	^ (folder / StartupLoader startupScriptName) exists
			ifTrue:	[ { folder fileNamed: StartupLoader startupScriptName }]
			ifFalse: [ nil ]