searching
forSelectorsDo: selectorBlock forClassNamesDo: classNamesBlock forSourceDo: sourceBlock forPatternDo: patternBlock forPragmasDo: pragmaBlock

	self isSelectorsSymbol
		ifTrue: [^selectorBlock value].
	self isClassNamesSymbol
		ifTrue: [^classNamesBlock value].
	self isSourceSymbol
		ifTrue: [^sourceBlock value].
	self isPatternSymbol
		ifTrue: [^patternBlock value].
	self isPragmasSymbol
		ifTrue: [^pragmaBlock value].