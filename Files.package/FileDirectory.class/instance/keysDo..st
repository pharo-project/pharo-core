enumeration
keysDo: nameBlock
	"Evaluate the given block for each file or directory name in this directory."

	^ self fileAndDirectoryNames do: nameBlock
