private
selectHandlers
	| handlers |
	handlers := CommandLineHandler selectHandlersFor: commandLine.
	handlers := handlers sort: [ :a :b| a priority >= b priority ].
	^ handlers