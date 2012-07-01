testing method dictionary
whichClassIncludesSelector: aSymbol 
	"Answer the class on the receiver's superclass chain where the 
	argument, aSymbol (a message selector), will be found. Answer nil if none found."
	"Rectangle whichClassIncludesSelector: #inspect."
	(self includesSelector: aSymbol)
		ifTrue: [^ self].
	superclass == nil
		ifTrue: [^ nil].
	^ superclass whichClassIncludesSelector: aSymbol