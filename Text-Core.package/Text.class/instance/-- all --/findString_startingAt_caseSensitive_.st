findString: aString startingAt: start caseSensitive: caseSensitive
	"Answer the index of subString within the receiver, starting at index 
	start. If the receiver does not contain subString, answer 0."

	^string findString: aString asString startingAt: start caseSensitive: caseSensitive