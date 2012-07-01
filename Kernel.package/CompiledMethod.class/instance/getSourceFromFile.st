source code management
getSourceFromFile
	"Read the source code from file, determining source file index and
	file position from the last 3 bytes of this method."
	| position |
	(position := self filePosition) = 0 ifTrue: [^ nil].
	^ (RemoteString newFileNumber: self fileIndex position: position) string