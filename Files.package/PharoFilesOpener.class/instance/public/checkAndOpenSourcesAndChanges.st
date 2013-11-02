checkAndOpenSourcesAndChanges
	"Open the changes and sources files and install them in the SourceFiles global variable."

	SourceFiles := Array
		with: self tryToOpenSources
		with: self tryToOpenChanges