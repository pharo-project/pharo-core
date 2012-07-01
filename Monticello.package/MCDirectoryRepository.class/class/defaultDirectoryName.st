instance creation
defaultDirectoryName
	^ DefaultDirectoryName ifNil: [
		DefaultDirectoryName :=  FileSystem workingDirectory fullName].