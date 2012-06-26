source code management
putSource: sourceStr fromParseNode: methodNode inFile: fileIndex withPreamble: preambleBlock
	"Store the source code for the receiver on an external file.
	If no sources are available, i.e., SourceFile is nil, then store
	temp names for decompilation at the end of the method.
	If the fileIndex is 1, print on *.sources;  if it is 2, print on *.changes,
	in each case, storing a 4-byte source code pointer at the method end."

	| file remoteString |
	(SourceFiles == nil or: [(file := SourceFiles at: fileIndex) == nil]) ifTrue:
		[^self becomeForward: (self copyWithTempsFromMethodNode: methodNode)].

	Smalltalk assureStartupStampLogged.
	file setToEnd.

	preambleBlock value: file.  "Write the preamble"
	remoteString := RemoteString newString: sourceStr onFileNumber: fileIndex toFile: file.
	file nextChunkPut: ' '.
	InMidstOfFileinNotification signal ifFalse: [file flush].
	self setSourcePosition: remoteString position inFile: fileIndex