string 
	"Answer the receiver's string if remote files are enabled.
	Use a read only copy to avoid syntax errors when accessed via
	multiple processes."
	
	^ self fileStreamDo: [ :readStream | readStream nextChunk ]