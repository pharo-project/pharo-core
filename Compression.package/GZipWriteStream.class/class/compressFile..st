file list services
compressFile: fileName
	"Create a compressed file from the file of the given name"

	(FileStream readOnlyFileNamed: fileName) compressFile