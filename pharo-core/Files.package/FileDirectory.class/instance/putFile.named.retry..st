file operations
putFile: file1 named: destinationFileName retry: aBool
	"Copy the contents of the existing fileStream into the file destinationFileName in this directory.  fileStream can be anywhere in the fileSystem.  No retrying for local file systems."

	^ self putFile: file1 named: destinationFileName
