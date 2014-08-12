logServerSocketBound
	logLevel < 1 ifTrue: [ ^ nil ].
	^ (self newLogEvent: ZnServerSocketBoundEvent)
		address: serverSocket address;
		port: serverSocket port;
		emit