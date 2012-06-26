visitor-double dispatching
acceptReturnNode: aReturnNode 
	codeStream nextPut: $^.
	self visitNode: aReturnNode value