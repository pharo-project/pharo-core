file operations
copyFileWithoutOverwriteConfirmationNamed: fileName1 toFileNamed: fileName2
	"Copy the contents of the existing file with the first name into a file with the second name (which may or may not exist). If the second file exists, force an overwrite without confirming.  Both files are assumed to be in this directory."
	"FileDirectory default copyFileWithoutOverwriteConfirmationNamed: 'todo.txt' toFileNamed: 'todocopy.txt'"

	| file1 file2 |
	fileName1 = fileName2 ifTrue: [^ self].
	file1 := (self readOnlyFileNamed: fileName1) binary.
	file2 := (self forceNewFileNamed: fileName2) binary.
	self copyFile: file1 toFile: file2.
	file1 close.
	file2 close.