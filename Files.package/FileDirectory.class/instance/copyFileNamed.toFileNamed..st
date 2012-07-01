file operations
copyFileNamed: fileName1 toFileNamed: fileName2
	"Copy the contents of the existing file with the first name into a new file with the second name. Both files are assumed to be in this directory."
	"FileDirectory default copyFileNamed: 'todo.txt' toFileNamed: 'todocopy.txt'"

	| file1 file2 |
	file1 := (self readOnlyFileNamed: fileName1) binary.
	file2 := (self newFileNamed: fileName2) binary.
	self copyFile: file1 toFile: file2.
	file1 close.
	file2 close.
