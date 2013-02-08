System-FileRegistry
serviceBrowseDotChangesFile
	"Answer a service for opening a changelist browser on the tail end of a .changes file"

	^ SimpleServiceEntry 
		provider: self 
		label: 'Recent changes in file'
		selector: #browseRecentLogOnPath:
		description: 'Open a changelist tool on recent changes in file'
		buttonLabel: 'Recent changes'