lastHTTPProxyServer
	^ LastHTTPProxyServer ifNil: [ LastHTTPProxyServer := HTTPProxyServer ]
