vm statistics
statisticsShortReport
	"Convenience item for access to recent statistics only"
	
	"
	Workspace openContents: (Smalltalk vm statisticsShortReport) label: 'VM Recent Statistics'
	"

	^ self statisticsReport readStream
		upToAll: 'Since';
		nextLine;
		upToEnd