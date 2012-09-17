utilities
shouldUseProxy: serverName

	NetworkSystemSettings useHTTPProxy ifFalse: [ ^ false ].
	self httpProxyServer ifNotEmpty: [
		^ NetworkSystemSettings isHttpProxyException: serverName ].
	^ false