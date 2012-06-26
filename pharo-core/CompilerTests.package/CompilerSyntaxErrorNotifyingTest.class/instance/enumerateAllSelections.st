private
enumerateAllSelections
	"This method intercepts the SyntaxErrorNotification and prevent the SyntaxError morph to open.
	The notification errorCode hold the source of evaluated sub-selection with inserted error message.
	This can be compared to expected error notification."
	| syntaxErrorProbe |
	syntaxErrorProbe := Object new.
	1 to: self numberOfSelections do: [:n |
		| result |
		result := [self evaluateSelectionNumber: n] on: SyntaxErrorNotification do: [:exc |
			| expectedNotification expectedNotificationLocation |
			expectedNotification := (expectedErrors at: n) allButFirst.
			(expectedNotification endsWith: ' ->') ifTrue: [expectedNotification := expectedNotification allButLast: 3].
			expectedNotificationLocation := (expectedErrorPositions at: n) - (morph editor startIndex - 1).
			self assert: expectedNotificationLocation = exc location.
			self assert: expectedNotification = exc errorMessage asString.
			exc return: syntaxErrorProbe].
		self assert: result == syntaxErrorProbe].