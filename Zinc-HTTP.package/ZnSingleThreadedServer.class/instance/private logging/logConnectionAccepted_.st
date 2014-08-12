logConnectionAccepted: socket
	logLevel < 3 ifTrue: [ ^ nil ].
	^ (self newLogEvent: ZnConnectionAcceptedEvent)
		address: socket remoteAddress;
		emit