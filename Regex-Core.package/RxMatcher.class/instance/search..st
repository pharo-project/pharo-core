accessing
search: aString
	"Search the string for occurrence of something matching myself.
	Answer a Boolean indicating success."

	^self searchStream: aString readStream