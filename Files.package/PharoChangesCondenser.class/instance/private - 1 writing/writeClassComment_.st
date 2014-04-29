writeClassComment: aClass
	| organizer commentRemoteString stamp |
	
	organizer := aClass organization.
	commentRemoteString := organizer commentRemoteStr.
	
	(commentRemoteString isNil or: [ commentRemoteString sourceFileNumber = 1 ])
		ifTrue: [ ^ self ].
		
	self nextCommentChunkDo: [ :strm |
		strm 
			nextPutAll: self name;
			nextPutAll: ' commentStamp: '.
		stamp := organizer commentStamp 
			ifNil: ['<historical>'].
		stamp storeOn: strm ].
	
	self 
		writeRemoteString: organizer classComment
		for: aClass