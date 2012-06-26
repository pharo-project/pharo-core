commands
evaluate: sourceString
		
	[ self stdout print: (Compiler evaluate: sourceString); cr ]
		on: Error, ParserNotification
		do: [ :e| 	self handleError: e  ].