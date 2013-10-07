includesElementNamed: elementName in: aCollection
	| aSymbol |
	
	aSymbol:= elementName asSymbol.
	^aCollection isDictionary
		ifTrue: [ aCollection includesKey:  aSymbol ]
		ifFalse:[ aCollection anySatisfy: [ :each| each name = aSymbol ] ]