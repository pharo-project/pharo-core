resolveSymbol: symbol
	(self symbolIsSelector: symbol) ifTrue: [ 
		^self systemNavigation browseAllImplementorsOf: symbol findSelector ].
	(self symbolIsClass: symbol) ifTrue: [ 
		^Smalltalk tools browser openOnClass: (Smalltalk globals at: symbol) ].
	(self symbolIsPackage: symbol) ifTrue: [ 
		^Smalltalk tools browser openOnPackage: (RPackage organizer packageNamed: symbol asString) ].
	(self symbolIsGlobalValue: symbol)
		ifTrue: [ ^ self systemNavigation browseAllReferencesTo:(Smalltalk globals bindingOf: symbol)].
	(self classbindingForClassVar: symbol) ifNotNil:[: classbinding | 
		^ self systemNavigation browseAllReferencesTo: classbinding].
	"when in doubt, just browse references to:"
	^ self systemNavigation browseAllReferencesTo: symbol.