settings
lastHTTPProxyPort
	^ LastHTTPProxyPort ifNil: [LastHTTPProxyPort := HTTPSocket httpProxyPort]. 
