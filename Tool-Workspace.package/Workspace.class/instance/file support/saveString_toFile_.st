saveString: aString toFile: aFileName
	"Save the given string to the given file"

	| writeStream fileContent |
	writeStream := (File named: aFileName) openForWrite writeStream.
	fileContent := ZnCharacterWriteStream on: writeStream encoding: encoding.
	fileContent nextPutAll: aString