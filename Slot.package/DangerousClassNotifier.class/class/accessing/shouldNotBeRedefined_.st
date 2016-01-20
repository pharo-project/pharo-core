shouldNotBeRedefined: classSymbol
	Smalltalk at: classSymbol ifPresent: 
	[ 	:class |
		^ (Smalltalk specialObjectsArray includes: class) 
				or: [class isKindOf: class]
	].
	^false.
