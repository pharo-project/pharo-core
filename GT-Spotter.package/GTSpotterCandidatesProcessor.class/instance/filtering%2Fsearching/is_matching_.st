is: anObject matching: aString
	"Returns true if anObject matches a provided string, otherwise false.
	Default implementation matches string representation of an object with passed value"
	^ anObject asString includesSubstring: aString caseSensitive: false