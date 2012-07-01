as yet unclassified
forDoit: aString
	^ (self subclassForDoit: aString) ifNotNil: [:c | c new source: aString]