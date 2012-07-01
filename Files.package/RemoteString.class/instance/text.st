accessing
text 
	"Answer the receiver's string asText if remote files are enabled.
	Use a read only copy to avoid syntax errors when accessed via
	multiple processes."
	
	"| theFile |
	self haltOnce.
	(sourceFileNumber == nil or: [(SourceFiles at: sourceFileNumber) == nil]) ifTrue: [^ nil].
	theFile := (SourceFiles at: sourceFileNumber) readOnlyCopy.
	^[theFile position: filePositionHi.
	theFile position > theFile size ifTrue: [
		self error: 'RemoteString past end of file' ].
	theFile nextChunkText string ] ensure: [theFile close]"
	"Code saved should only be ascii and we do not want to have the encoding at the end of the chunk
	this is why we extract the string and convert instead of invoking nextChunkText"
	
	^ self string asText 