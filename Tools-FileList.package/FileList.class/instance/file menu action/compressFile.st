compressFile
	"Compress the currently selected file"

	| f |
	f := StandardFileStream
				readOnlyFileNamed: self reference fullName.
	f compressFile.
	self updateFileList