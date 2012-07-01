proxy settings
useProxyServerNamed: proxyServerName port: portNum
	"Direct all HTTP requests to the HTTP proxy server with the given name and port number."

	proxyServerName ifNil: [  "clear proxy settings"
		self httpProxyServer: nil.
		self httpProxyPort: 80.
		^ self].

	proxyServerName isString
		ifFalse: [self error: 'Server name must be a String or nil'].
	self httpProxyServer: proxyServerName.

	self httpProxyPort: portNum.
	self httpProxyPort class == String ifTrue: [HTTPProxyPort := portNum asNumber].
	self httpProxyPort ifNil: [self httpProxyPort: self defaultPort].