accessing
currentDisplayChoice: aSymbol

	currentDisplayChoice := aSymbol.
	
	self changed: #showSource.
	self changed: #showByteCode.
	self changed: #showDecompile.
	self changed: #sourceCode.
	self announce: (NautilusTextDisplayerChanged displayerSymbol: aSymbol)