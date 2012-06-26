file operations
setMacFileNamed: fileName type: typeString creator: creatorString
	"Set the Macintosh file type and creator info for the file with the given name. Fails if the file does not exist or if the type and creator type arguments are not strings of length 4. Does nothing on other platforms (where the underlying primitive is a noop)."
	"FileDirectory default setMacFileNamed: 'foo' type: 'TEXT' creator: 'ttxt'"

 	self primSetMacFileNamed: (self fullNameFor: fileName) asVmPathName
		type: typeString convertToSystemString
		creator: creatorString convertToSystemString.
