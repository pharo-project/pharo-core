socks5
skipQualifiedHostName

	| startTime response bytesRead |
	startTime := Time millisecondClockValue.
	response := ByteArray new: 1.

	[(bytesRead := self receiveDataInto: response) < 1
		and: [(Time millisecondClockValue - startTime) < self defaultTimeOutDuration]] whileTrue.

	bytesRead < 1
		ifTrue: [self socksError: 'Time out reading data'].

	self waitForReply: (response at: 1) + 2 for: self defaultTimeOutDuration