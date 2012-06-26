settings
useHTTPProxy: aBoolean
	UseHTTPProxy = aBoolean ifTrue: [^self].
	UseHTTPProxy := aBoolean.
	self  useHTTPProxy
		ifTrue: [self httpProxyPort: self lastHTTPProxyPort .
			self httpProxyServer: self lastHTTPProxyServer]
		ifFalse: [HTTPSocket stopUsingProxyServer]
