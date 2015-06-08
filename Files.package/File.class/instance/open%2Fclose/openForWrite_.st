openForWrite: writeMode 
	"Open the file with the given name. If writeMode is true, allow writing, otherwise open the file in read-only mode."
	fileHandle := self basicOpenForWrite: writeMode.
	fileHandle ifNil: [ FileException signal: 'cannot open file: ', name ].