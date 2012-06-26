exceptionBuilder
messageText
	"Return an exception's message text."
	
	^messageText == nil
		ifTrue:
			[message == nil
				ifTrue: [super messageText]
				ifFalse: [
					message lookupClass == UndefinedObject
						ifTrue: ['receiver of "{1}" is nil' translated format: {message selector asString}]
						ifFalse: [message lookupClass printString, '>>', message selector asString]]]
		ifFalse: [messageText]