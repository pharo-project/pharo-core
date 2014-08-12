logConnectionEstablishedTo: url started: initialMilliseconds
	logLevel < 3 ifTrue: [ ^ nil ].
	(self newLogEvent: ZnConnectionEstablishedEvent)
		hostname: url host;
		port: url portOrDefault;
		address: connection socket remoteAddress;
		duration: (Time millisecondsSince: initialMilliseconds);
		emit