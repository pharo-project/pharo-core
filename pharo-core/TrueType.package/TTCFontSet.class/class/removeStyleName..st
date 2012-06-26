as yet unclassified
removeStyleName: aString

	| style symName |
	symName := aString asSymbol.
	style := TextSharedInformation removeKey: symName ifAbsent: [].
	style ifNotNil: [self unregister: symName].
	TTCFontDescription removeDescriptionNamed: aString asString.
