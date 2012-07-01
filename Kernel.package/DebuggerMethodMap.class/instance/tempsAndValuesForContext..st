accessing
tempsAndValuesForContext: aContext
	"Return a string of the temporary variabls and their current values"
	| aStream |
	aStream := (String new: 100) writeStream.
	(self tempNamesForContext: aContext) doWithIndex:
		[:title :index |
		 aStream nextPutAll: title; nextPut: $:; space; tab.
		 aContext print: (self namedTempAt: index in: aContext) on: aStream.
		 aStream cr].
	^aStream contents