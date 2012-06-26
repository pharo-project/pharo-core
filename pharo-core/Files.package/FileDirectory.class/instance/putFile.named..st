file operations
putFile: file1 named: destinationFileName
	"Copy the contents of the existing fileStream into the file destinationFileName in this directory.  fileStream can be anywhere in the fileSystem."

	| file2 |
	file1 binary.
	(file2 := self newFileNamed: destinationFileName) ifNil: [^ false].
	file2 binary.
	self copyFile: file1 toFile: file2.
	file1 close.
	file2 close.
	^ true
