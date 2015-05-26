packageNamed: aSymbol  ifAbsent: errorBlock
	"Answer a package with exact name but ignoring case. 
	 It first looks for exact key for performance"
	^ packages 
		at: aSymbol asSymbol 
		ifAbsent: [ 
			self  
				packageNamedIgnoreCase: aSymbol 
			 	ifAbsent: errorBlock ]
	