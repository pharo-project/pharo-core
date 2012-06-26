create/delete file
deleteFilePath: fullPathToAFile
	"Delete the file after finding its directory"

	| dir |
	dir := self on: (self dirPathFor: fullPathToAFile).
	dir deleteFileNamed: (self localNameFor: fullPathToAFile).
