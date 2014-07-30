toDoLimit: variable
	(receiver = variable and: [selector = #<= or: [selector key = #>=]]) 
		ifTrue: [^ arguments first]
		ifFalse: [^ nil]