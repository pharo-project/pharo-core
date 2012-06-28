commands
evaluate: aStream
		
	[ self stdout print: (Compiler evaluate: aStream); cr ]
		on: Error, ParserNotification
		do: [ :e| 	self handleError: e  ].