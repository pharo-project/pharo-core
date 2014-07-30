toDoIncrement: variable
	(receiver = variable and: [selector = #+]) 
		ifFalse: [^ nil].
	(arguments first isLiteralNode and: [ arguments first value isInteger ])
		ifTrue: [^ arguments first]
		ifFalse: [^ nil]