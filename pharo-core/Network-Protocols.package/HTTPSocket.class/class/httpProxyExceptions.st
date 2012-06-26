proxy settings
httpProxyExceptions
	^ HTTPProxyExceptions ifNil: [HTTPProxyExceptions := OrderedCollection new].
