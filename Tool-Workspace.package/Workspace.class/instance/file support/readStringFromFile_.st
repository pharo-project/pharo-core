readStringFromFile: aFileName
	"Read the content of the given file."

	| readStream fileContent |
	readStream := (File named: aFileName) openForRead readStream.
	fileContent := ZnCharacterReadStream on: readStream encoding: encoding.
	self contents: fileContent upToEnd asString