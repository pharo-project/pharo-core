extractAllIn: aFileName
	"Service method to extract all contents of a zip."
	| directory |
	directory := (self directorySelectorModel modalFolderSelector:aFileName asFileReference) ifNil: [^ self].
	^ (self new) 
		readFrom: aFileName;
		extractAllTo: directory.