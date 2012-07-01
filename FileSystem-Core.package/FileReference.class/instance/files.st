navigating
files
	"Return all the files (as opposed to folders) contained in the receiver"
	
	^ (self fileSystem filesAt: self path) collect: [:ea |
		FileReference
			fileSystem: self fileSystem
			path: ea]