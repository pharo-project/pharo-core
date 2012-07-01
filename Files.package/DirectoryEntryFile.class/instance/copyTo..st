file operations
copyTo: targetDirectory 
	"Make a copy of me in targetDirectory.  targetDirectory can be a FileDirectory, ServerDirectory or a DirectoryEntryDirectory.  If a file with my name already exists in targetDirectory, signal a FileExistsException."
	^ targetDirectory copyHere: self