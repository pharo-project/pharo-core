file operations
createDirectory: localFileName
	"Create a directory with the given name in this directory. Fail if the name is bad or if a file or directory with that name already exists."

 	self primCreateDirectory: (self fullNameFor: localFileName) asVmPathName
