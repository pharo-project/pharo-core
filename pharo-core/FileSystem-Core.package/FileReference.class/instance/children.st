navigating
children
	"Answer an array containing references to the direct children
	of this reference."

	^ (self fileSystem childrenAt: self path) collect: [:ea |
		FileReference
			fileSystem: self fileSystem
			path: ea]