putClassCommentToCondensedChangesFile: aFileStream
	"Called when condensing changes.  If the receiver has a class comment, and if that class comment does not reside in the .sources file, then write it to the given filestream, with the resulting RemoteString being reachable from the source file #2.  Note that any existing backpointer into the .sources file is lost by this process -- a situation that maybe should be fixed someday."

	| header aStamp aCommentRemoteStr |
	self isMeta ifTrue: [^ self].  "bulletproofing only"
	((aCommentRemoteStr := self organization commentRemoteStr) isNil or:
		[aCommentRemoteStr sourceFileNumber = 1]) ifTrue: [^ self].

	aFileStream cr; nextPut: $!.
	header := String streamContents: [:strm | strm nextPutAll: self name;
		nextPutAll: ' commentStamp: '.
		(aStamp := self organization commentStamp ifNil: ['<historical>']) storeOn: strm.
		strm nextPutAll: ' prior: 0'].
	aFileStream nextChunkPut: header.
	aFileStream cr.
	self organization classComment: (RemoteString newString: self organization classComment onFileNumber: 2 toFile: aFileStream) stamp: aStamp