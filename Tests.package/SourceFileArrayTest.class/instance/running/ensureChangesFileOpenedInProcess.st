ensureChangesFileOpenedInProcess
	"Ensure the changes file is open"

	| remoteString |
	remoteString := RemoteString 
		newFileNumber: (self class >> #ensureChangesFileOpenedInProcess) fileIndex
		position: (self class >> #ensureChangesFileOpenedInProcess) filePosition.

	self deny: remoteString string isNil.
	"self deny: ProcessAndSessionLocalSourcesFileArray value isNil."