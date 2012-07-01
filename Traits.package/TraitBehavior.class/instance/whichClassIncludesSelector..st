class compatibility
whichClassIncludesSelector: aSymbol 
	"Traits compatibile implementation for:
	
	Answer the class on the receiver's superclass chain where the 
	argument, aSymbol (a message selector), will be found. Answer nil if none found."
	
	^(self includesSelector: aSymbol)
		ifTrue: [self]
		ifFalse: [nil]