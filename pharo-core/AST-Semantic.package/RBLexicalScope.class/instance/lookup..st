querying
lookup: aString
	"Lookup the variable aString in the receiving scope, throw an error if not found."

	^ self lookup: aString ifAbsent: [ self error: 'No binding for ' , aString printString , ' found.' ]