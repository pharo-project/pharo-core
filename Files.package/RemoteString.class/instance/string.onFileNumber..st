private
string: aString onFileNumber: fileNumber
	"Store this as my string if source files exist."
	| theFile |
	(SourceFiles at: fileNumber) == nil ifFalse: 
		[theFile := SourceFiles at: fileNumber.
		theFile setToEnd; cr.
		self string: aString onFileNumber: fileNumber toFile: theFile]