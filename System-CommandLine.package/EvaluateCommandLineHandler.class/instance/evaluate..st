commands
evaluate: aStream
		
	[ self stdout print: (Compiler evaluate: aStream); lf ]
		on: Error, ParserNotification
		do: [ :e| 	self handleError: e  ].