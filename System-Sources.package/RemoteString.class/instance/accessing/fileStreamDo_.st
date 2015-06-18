fileStreamDo: aBlock
	"Answer the file stream with position set at the beginning of my string.
	Answer a read only copy to avoid syntax errors when accessed via multiple processes. 
	The caller does not need to close the stream."

	^ SourceFiles 
		readStreamAtFileIndex: sourceFileNumber 
		atPosition: filePositionHi 
		ifPresent: aBlock 
		ifAbsent: [ nil ]