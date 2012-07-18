tests
testIssue6406

	| aFolder dialog file invalidFolder |
	aFolder := (FileSystem workingDirectory / 'testIssue6406') ensureDirectory.
	
	"Absolute folder paths work"
	dialog := FileDialogWindow new selectPathName: aFolder fullName.
	self assert: dialog selectedFileDirectory equals: aFolder.
	
	"Relative folder paths work"
	dialog := FileDialogWindow new selectPathName: 'testIssue6406' asFileReference.
	self assert: dialog selectedFileDirectory equals: aFolder.
	
	"Invalid folder defaults to the working folder"
	invalidFolder := 'cant-possibly-exist-for-testIssue6406'.
	dialog := FileDialogWindow new selectPathName: invalidFolder.
	self assert: dialog selectedFileDirectory equals: FileSystem workingDirectory.