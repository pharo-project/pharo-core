selectHandlers
	| handlers |
	
	handlers := (CommandLineHandler selectHandlersFor: commandLine) copyWithout: self class.
	handlers := (handlers sort: [ :a :b| a priority >= b priority ]).
	^ handlers