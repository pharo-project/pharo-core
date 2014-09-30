keyStroke: evt
	evt keyValue = Character cr asciiValue
		ifTrue: [ 
			| answer |
			self announce: (answer := RubReturnEntered morph: self).
			answer accepted
				ifTrue: [ self editor textWasAccepted ] ]
		ifFalse: [ super keyStroke: evt ]