methods
includesSelector: aSymbol 
	"Answer whether the message whose selector is the argument is in the 
	method dictionary of the receiver's class."

	^ self exists
		ifTrue: [self realClass includesSelector: aSymbol]
		ifFalse: [false]
		
	"Note that this method is only used to check whether the class should initialized so returning false is better than raising an error"