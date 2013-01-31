private
browse: anAbstractFileReference

	| tokens testClass |
	tokens := anAbstractFileReference base findTokens: '-'.
	testClass := Smalltalk at: tokens first asSymbol.
	Browser fullOnClass: testClass selector: tokens second asSymbol.