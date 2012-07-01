*Ring-Core-Kernel
sourceCodeAt: sourcePointer 
	"Retrieves the source code for the pointer received as argument"
	
	| fileIndex filePosition |
	filePosition := self filePositionFromSourcePointer: sourcePointer.
	^filePosition = 0
		ifTrue: [ '' ]
		ifFalse:[ fileIndex := self fileIndexFromSourcePointer: sourcePointer.
				(RemoteString newFileNumber: fileIndex position: filePosition) string ]