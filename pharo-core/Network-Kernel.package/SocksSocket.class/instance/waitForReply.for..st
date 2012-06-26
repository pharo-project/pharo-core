private
waitForReply: replySize for: timeOutDuration
	| startTime response delay bytesRead |
	startTime := Time millisecondClockValue.
	response := ByteArray new: replySize.
	bytesRead := 0.
	delay := Delay forMilliseconds: 500.
	[bytesRead < replySize
		and: [(Time millisecondClockValue - startTime) < timeOutDuration]] whileTrue: [
		bytesRead := bytesRead + (self receiveDataInto: response).
		delay wait.
		Transcript show: '.'].
	bytesRead < replySize
		ifTrue: [self close; destroy.
				^ (ConnectionRefused host: self dstIP port: self dstPort) signal].
	^response