toDoLimit: variable
	(receiver = variable and: [selector == #<= or: [selector == #>= ]]) 
		ifTrue: [ ^ arguments first ]
		ifFalse: [ ^ nil ]