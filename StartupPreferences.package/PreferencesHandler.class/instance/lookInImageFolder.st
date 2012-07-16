actions
lookInImageFolder

	| folder |
	
	folder := FileSystem workingDirectory.
	folder exists ifFalse: [ ^ nil ].
	
	^ (folder / StartupLoader startupScriptName) exists
			ifTrue:	[ { folder / StartupLoader startupScriptName }]
			ifFalse: [ nil ]