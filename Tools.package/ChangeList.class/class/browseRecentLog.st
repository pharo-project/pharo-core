public access
browseRecentLog
	"ChangeList browseRecentLog"
	"Prompt with a menu of how far back to go to browse the current image's changes log file"
	^ self
		browseRecentLogOn: (SourceFiles at: 2)
		startingFrom: Smalltalk lastQuitLogPosition