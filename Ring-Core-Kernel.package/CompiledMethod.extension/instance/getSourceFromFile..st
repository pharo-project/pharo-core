*Ring-Core-Kernel
getSourceFromFile: file
	"Read the source code from file, determining source file index and
	file position from the last 3 bytes of this method."
	| position |
	(position := self filePosition) = 0 ifTrue: [^ nil].
	"assime this is a valid file"
	file position: position.
	^ file nextChunk