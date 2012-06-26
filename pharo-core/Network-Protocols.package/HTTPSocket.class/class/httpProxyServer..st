proxy settings
httpProxyServer: aStringOrNil
	HTTPProxyServer := (aStringOrNil ifNil: [''] ifNotNil: [aStringOrNil trimBoth ])