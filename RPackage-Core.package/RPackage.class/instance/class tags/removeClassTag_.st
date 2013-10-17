removeClassTag: aSymbol
	"Remove the class tag from the receiver."
	
	self basicRemoveTag: (self 
		classTagNamed:  aSymbol 
		ifAbsent: [ ^ self ])