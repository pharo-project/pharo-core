privateInitializeFromText: aString relativeTo: aUrl
	"initialize from the given string, as a relative URL.  aString will have had the scheme name removed, if it was present to begin with.  If it was, then the scheme name was the same as the receiver's scheme name"

	"by default, just do regular initialization"
	^self privateInitializeFromText: aString