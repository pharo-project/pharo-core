openFile: aFileName
	"Open a new workspace associated with the given file"

	^ self new 
		open;
		openFile: aFileName;
		yourself