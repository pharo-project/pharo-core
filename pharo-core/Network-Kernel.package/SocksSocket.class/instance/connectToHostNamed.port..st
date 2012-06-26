connection open/close
connectToHostNamed: hostName port: port
	super connectTo: socksIP port: socksPort.
	self waitForConnectionFor: Socket standardTimeout.
	dstName := hostName.
	dstPort := port.
	vers = 4
		ifTrue: [self connectSocks4]
		ifFalse: [self connectSocks5]
	