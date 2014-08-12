logConnectionClosed: socketStream
	logLevel < 3 ifTrue: [ ^ nil ].
	socketStream socket ifNil: [ ^ nil ].
	^ (self newLogEvent: ZnServerConnectionClosedEvent)
		address: socketStream socket remoteAddress;
		emit