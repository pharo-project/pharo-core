visitReturnNode: aReturnNode 
	aReturnNode value: (self visitNode: aReturnNode value)