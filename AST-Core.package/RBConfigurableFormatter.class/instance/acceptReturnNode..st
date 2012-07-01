visitor-double dispatching
acceptReturnNode: aReturnNode 
	codeStream
		nextPut: $^;
		nextPutAll: StringFollowingReturn.
	self visitNode: aReturnNode value