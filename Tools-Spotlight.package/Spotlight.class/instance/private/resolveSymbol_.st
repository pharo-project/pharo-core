resolveSymbol: symbol
	(self symbolIsSelector: symbol) ifTrue: [ 
		^self systemNavigation browseAllImplementorsOf: symbol ].
	(self symbolIsClass: symbol) ifTrue: [ 
		^Smalltalk tools browser openOnClass: (Smalltalk globals at: symbol) ].
	(self symbolIsPackage: symbol) ifTrue: [ 
		^Smalltalk tools browser openOnPackage: (RPackage organizer packageNamed: symbol asString) ].

	self inform: ('There is no recognizable symbol named ', self model contents)