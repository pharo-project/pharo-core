releaseServerSocket
	"Release our server socket"
	
	| address port |
	serverSocket ifNil: [ ^ self ].
	address := serverSocket address.
	port := serverSocket port.
	(Delay forMilliseconds: 10) wait.
	serverSocket destroy.
	serverSocket := nil.
	self logServerSocketReleasedAddress: address port: port 