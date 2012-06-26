accessing
findString: subString startingAt: start 
	"Answer the index of subString within the receiver, starting at start. If 
	the receiver does not contain subString, answer 0."

	^self findString: subString startingAt: start caseSensitive: true