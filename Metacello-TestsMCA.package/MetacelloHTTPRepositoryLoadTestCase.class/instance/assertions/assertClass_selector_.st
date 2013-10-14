assertClass: aClassSymbol selector: aMethodSymbol
	self assertClass: aClassSymbol.
	self assert: ((Smalltalk at: aClassSymbol) includesSelector: aMethodSymbol)