shouldNotBeRedefined: classSymbol
	Smalltalk at: classSymbol ifPresent: 
	[ 	:class |
		^(Smalltalk compactClassesArray includes: class) 
			or: [ (Smalltalk specialObjectsArray includes: class) 
				or: [class isKindOf: class] ]	
	].
	^false.
