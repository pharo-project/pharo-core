putSource: sourceStr inFile: fileIndex withPreamble: preambleBlock
	"Deprecated. Remove me. Kept just for allowing load a slice."

	| file remoteString |
	(file := SourceFiles at: fileIndex) 
		ifNil: [ ^ self becomeForward: (self copyWithSource: sourceStr) ].

	Smalltalk assureStartupStampLogged.
	file setToEnd.

	preambleBlock value: file.  "Write the preamble"
	remoteString := RemoteString newString: sourceStr onFileNumber: fileIndex toFile: file.
	file nextChunkPut: ' '.
	InMidstOfFileinNotification signal ifFalse: [ file flush ].
	self setSourcePosition: remoteString position inFile: fileIndex