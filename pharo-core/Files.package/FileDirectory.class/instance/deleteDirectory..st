file operations
deleteDirectory: localDirName
	"Delete the directory with the given name in this directory. Fail if the path is bad or if a directory by that name does not exist."

 	self primDeleteDirectory: (self fullNameFor: localDirName) asVmPathName.
