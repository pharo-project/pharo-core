string 
	"Answer the receiver's string if remote files are enabled.
	Use a read only copy to avoid syntax errors when accessed via
	multiple processes."
	
	| theFile |
	(sourceFileNumber isNil or: [ (SourceFiles at: sourceFileNumber) isNil ]) ifTrue: [ ^ '' ].
	theFile := (SourceFiles at: sourceFileNumber) readOnlyCopy.
	^ [ filePositionHi > theFile size ifTrue: [
		self error: 'RemoteString past end of file' ].
		theFile position: filePositionHi.
		theFile nextChunk] ensure: [ theFile close ]