forceChangesToDisk
	"Deprecated"

	| changesFile |
	changesFile := SourceFiles changesFileStream.
	(changesFile isKindOf: FileStream)
		ifFalse: [ ^ self ].
	changesFile flush.
	changesFile close.
	changesFile open: changesFile name forWrite: true.
	changesFile setToEnd