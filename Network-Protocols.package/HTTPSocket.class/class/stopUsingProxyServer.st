proxy settings
stopUsingProxyServer
	"Stop directing HTTP request through a proxy server."

	self httpProxyServer: nil.
	self httpProxyPort: 80.
	HTTPProxyCredentials := ''
