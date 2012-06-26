accessing
schemeIsHttp
	self scheme ifNil: [^false].
	^self scheme asLowercase = 'http'