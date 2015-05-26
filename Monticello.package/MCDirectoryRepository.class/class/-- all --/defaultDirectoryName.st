defaultDirectoryName
	^ DefaultDirectoryName ifNil: [
		DefaultDirectoryName :=  FileSystem workingDirectory fullName].