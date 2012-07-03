private
assureStartupStampLogged
	"If there is a startup stamp not yet actually logged to disk, do it now."
	| changesFile |
	startupStamp ifNil: [^ self].
	(SourceFiles isNil or: [(changesFile := SourceFiles at: 2) == nil]) ifTrue: [^ self].
	changesFile isReadOnly ifTrue:[^self].
	changesFile setToEnd; cr; cr.
	changesFile nextChunkPut: startupStamp asString; cr.
	startupStamp := nil.
	self forceChangesToDisk.