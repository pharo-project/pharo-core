newConnectionTo: url
	| initialMilliseconds |
	self signalHTTPProgress: 'Connecting to ',  url authority.
	initialMilliseconds := Time millisecondClockValue.
	connection := ZnNetworkingUtils socketStreamToUrl: request url.
	self logConnectionEstablishedTo: url started: initialMilliseconds