connection open/close
connectTo: hostAddress port: port
	self initializeNetwork.
	self shouldUseSocks
		ifFalse: [^super connectTo: hostAddress port: port].
	super connectTo: socksIP port: socksPort.
	self waitForConnectionFor: Socket standardTimeout.
	dstIP := hostAddress.
	dstPort := port.
	vers = 4
		ifTrue: [self connectSocks4]
		ifFalse: [self connectSocks5]
	