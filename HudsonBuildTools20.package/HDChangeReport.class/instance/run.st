running
run
	| stream |
	stream := FileDirectory default containingDirectory
		forceNewFileNamed: 'changelog.xml'.
	[ self generateOn: stream ]
		ensure: [ stream close ]