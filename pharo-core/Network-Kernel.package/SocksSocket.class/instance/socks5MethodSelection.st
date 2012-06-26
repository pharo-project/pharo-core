socks5
socks5MethodSelection
	"The client connects to the server, and sends a version
   identifier/method selection message.
	The server selects from one of the methods given in METHODS, and
   sends a METHOD selection message."

	| requestString response |
	requestString := ByteArray new writeStream.
	requestString
		nextPut: 5;
		nextPut: 1;
		nextPut: 0.
	self sendData: requestString contents.

	response := self waitForReply: 2 for: self defaultTimeOutDuration.
	(response at: 2) = 16rFF
		ifTrue: [self socksError: 'No acceptable methods.']
		ifFalse: [method := response at: 2]