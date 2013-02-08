System-FileRegistry
serviceBrowseCompressedChangeFile
	"Answer a service for opening a changelist browser on a file"

	^ SimpleServiceEntry 
		provider: self 
		label: 'Changelist browser'
		selector: #browseCompressedChangesFile:
		description: 'Open a changelist tool on this file'
		buttonLabel: 'Changes'