visitReturnNode: aReturnNode 

	valueTranslator visitNode: aReturnNode value.
	methodBuilder returnTop.
		
