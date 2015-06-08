closed
	"Answer true if this file is closed."

	^ fileHandle isNil or: [ (self primSizeNoError: fileHandle) isNil ]