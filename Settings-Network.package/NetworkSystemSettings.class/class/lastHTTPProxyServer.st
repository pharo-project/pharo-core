settings
lastHTTPProxyServer
	^ LastHTTPProxyServer ifNil: [LastHTTPProxyServer := HTTPSocket httpProxyServer].
