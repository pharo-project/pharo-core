newConnectionTo: url
	| initialMilliseconds proxied |
	self signalHTTPProgress: 'Connecting to ',  url authority.
	initialMilliseconds := Time millisecondClockValue.
	connection := ZnNetworkingUtils socketStreamToUrl: url.
	proxied := ZnNetworkingUtils shouldProxyUrl: url.
	"Note that the proxy server itself cannot be HTTPS"
	(proxied not and: [ #(https wss) includes: url scheme ]) 
		ifTrue: [
			self certificate ifNotNil: [ :certificate | 
				connection sslSession certificateName: certificate ].
			connection connect ].  
	self logConnectionEstablishedTo: url started: initialMilliseconds