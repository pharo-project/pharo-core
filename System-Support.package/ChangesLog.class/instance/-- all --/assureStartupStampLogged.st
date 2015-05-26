assureStartupStampLogged
	"If there is a startup stamp not yet actually logged to disk, do it now."

	| changesFile |
	startupStamp ifNil: [ ^ self ].
	(changesFile := SourceFiles at: 2) 
		ifNil: [ ^ self ].
	changesFile isReadOnly
		ifTrue: [ ^ self ].
	changesFile
		setToEnd;
		cr;
		cr.
	changesFile
		nextChunkPut: startupStamp asString;
		cr.
	startupStamp := nil.
	self forceChangesToDisk