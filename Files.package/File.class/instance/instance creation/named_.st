named: fileName
	"Open the file with the given name. If writeMode is true, allow writing, otherwise open the file in read-only mode."
	name := FilePathEncoder encode: fileName.
	writeable := true.
	self register.