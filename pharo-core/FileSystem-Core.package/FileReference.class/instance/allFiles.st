enumerating
allFiles
	"Return all the files (not directories) recursively nested in the receiver."
	^ self allChildren select: [:each | each isFile]