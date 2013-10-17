messageText
	
	"Return an exception's message text."

	^messageText == nil
		ifTrue: [fileName printString]
		ifFalse: [messageText]