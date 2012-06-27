testing
testReverseEcho10kFixed
	| dataSent dataRead clientStream semaphore |
	semaphore := self runServer: [ :serverSocket | | clientSocket stream data |
		clientSocket := serverSocket waitForAcceptFor: 10.
		stream := self socketStreamClass on: clientSocket.
		data := stream next: 10000.
		stream nextPutAll: data reverse.  
		stream close ].
	dataSent := self bytes: 10000.
	clientStream := self socketStreamClass openConnectionToHostNamed: 'localhost' port: self port.
	clientStream nextPutAll: dataSent; flush.
	dataRead := clientStream next: 10000.
	clientStream close.
	self assert: dataRead = dataSent reverse.
	semaphore wait