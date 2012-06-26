utilities
initHTTPSocket: httpUrl timeoutSecs: timeout ifError: aBlock
	"Retrieve the server and port information from the URL, match it to the proxy settings and open a http socket for the request."

	| serverName port serverAddr s |
	Socket initializeNetwork.

	serverName := httpUrl authority.
	port := httpUrl port ifNil: [self defaultPort].

	(self shouldUseProxy: serverName) ifTrue: [ 
		serverName := self httpProxyServer.
		port := self httpProxyPort].

  	"make the request"	
	serverAddr := NetNameResolver addressForName: serverName timeout: 20.
	serverAddr ifNil: [
		aBlock value: 'Error: Could not resolve the server named: ', serverName].

	s := HTTPSocket new.
	s connectTo: serverAddr port: port.
	(s waitForConnectionFor: timeout ifTimedOut: [false]) ifFalse: [
		Socket deadServer: httpUrl authority.
		s destroy.
		^aBlock value: 'Error: Server ',httpUrl authority,' is not responding'].
	^s
