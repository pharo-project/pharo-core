enumeration
directoryNamed: localFileName
	"Return the subdirectory of this directory with the given name."

	^ FileDirectory on: (self fullNameFor: localFileName)
