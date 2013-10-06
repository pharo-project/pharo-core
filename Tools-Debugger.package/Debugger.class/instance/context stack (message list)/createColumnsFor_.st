createColumnsFor: aString
	"Answer the array of contexts."

	| first second index |
	index := aString findString: '>>'.
	first := aString copyFrom: 1 to: index-1.
	second := aString copyFrom: index+2 to: aString size.
	^ {(self buildClassNameFor: first). second}