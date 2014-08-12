close
	"Close any HTTP network connection that I might have kept open."

	connection
		ifNotNil: [ 
			| address port |
			address := connection socket remoteAddress.
			port := connection socket remotePort.
			connection close.
			connection := nil.
			self logConnectionClosedAddress: address port: port ].
	lastUsed := nil