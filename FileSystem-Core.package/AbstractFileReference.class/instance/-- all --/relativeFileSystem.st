relativeFileSystem
	"Return a new filesystem that has it's root at the position of myself"
	^ FileSystem store: (RelativeFileSystemStore on: self)