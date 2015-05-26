browse: anAbstractFileReference

	| tokens testClass |
	anAbstractFileReference ifNil: [ ^self ].
	tokens := anAbstractFileReference base findTokens: '-'.
	testClass := Smalltalk at: tokens first asSymbol.
	Smalltalk tools browser fullOnClass: testClass selector: tokens second asSymbol.