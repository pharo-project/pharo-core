socks5
sendSocks5ConnectionRequest
	"Once the method-dependent subnegotiation has completed, the client
   sends the request details."

	| requestString |
	requestString := ByteArray new writeStream.
	requestString
		nextPut: 5;
		nextPut: self connectCommandCode;
		nextPut: 0. "Reserved slot"
	dstName isNil
		ifTrue: [
			requestString
				nextPutAll: self hostIPCode;
				nextPutAll: dstIP]
		ifFalse: [
			requestString
				nextPut: self qualifiedHostNameCode;
				nextPut: dstName size;
				nextPutAll: dstName asByteArray].
	requestString nextWordPut: dstPort.
	self sendData: requestString contents