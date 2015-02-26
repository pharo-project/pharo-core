newConnectionTo: url
	| initialMilliseconds |
	self signalHTTPProgress: 'Connecting to ',  url authority.
	initialMilliseconds := Time millisecondClockValue.
	connection := ZnNetworkingUtils socketStreamToUrl: url.
	(#(https wss) includes: url scheme) 
		ifTrue: [
			self certificate ifNotNil: [ :certificate | 
				connection sslSession certificateName: certificate ].
			connection connect ].  
	self logConnectionEstablishedTo: url started: initialMilliseconds