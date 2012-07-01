proxy settings
httpProxyPort
	"answer the httpProxyPort"
	^ HTTPProxyPort ifNil: [HTTPProxyPort := self defaultPort]