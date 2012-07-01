file name utilities
isLegalFileName: aString 
	"Answer true if the given string is a legal file name."

	^ (self checkName: aString fixErrors: true) = aString
