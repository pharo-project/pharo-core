file list
readOnlyStream
	"Answer a read-only stream on the selected file. For the various stream-reading services."
	
	^ MultiByteFileStream readOnlyFileNamed: self reference fullName