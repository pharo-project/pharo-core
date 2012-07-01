public access
browseFile: fileName    "ChangeList browseFile: 'AutoDeclareFix.st'"
	"Opens a changeList on the file named fileName"

	^ self browseStream: (FileStream readOnlyFileNamed: fileName)