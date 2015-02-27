selector: aSelector

	"(Symbol findInterned: aSelector) ifNil: [self propertyAt: #unknownSelector put: true ]."

	keywordsPositions := nil.
	selector := aSelector asSymbol.