messageText
	^super messageText
		ifNil: [self response]