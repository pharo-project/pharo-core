navigating
directories
	"Return all the directories (by opposition to files) contained in the receiver"

	^ (self fileSystem directoriesAt: self path) collect: [:ea |
		FileReference
			fileSystem: self fileSystem
			path: ea]