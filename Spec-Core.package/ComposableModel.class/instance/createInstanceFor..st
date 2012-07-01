instance creation
createInstanceFor: aClassSymbol
	| class |
	
	class := self resolveSymbol: aClassSymbol.
	^ self instantiate: class.