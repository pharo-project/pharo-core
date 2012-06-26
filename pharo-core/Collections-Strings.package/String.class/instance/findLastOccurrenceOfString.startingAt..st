accessing
findLastOccurrenceOfString: subString startingAt: start 
	"Answer the index of the last occurrence of subString within the receiver, starting at start. If 
	the receiver does not contain subString, answer 0.  Case-sensitive match used."

	| last now |
	last := self findString: subString startingAt: start.
	last = 0 ifTrue: [^ 0].
	[last > 0] whileTrue:
		[now := last.
		last := self findString: subString startingAt: last + 1].

	^ now
