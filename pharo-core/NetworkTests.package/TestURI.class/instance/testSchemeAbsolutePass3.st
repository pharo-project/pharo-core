parsing tests
testSchemeAbsolutePass3
	| uri |
	uri := URI fromString: 'ftp://ftp@pharo.org'.
	self assert: (uri scheme = 'ftp').
	self assert: uri isAbsolute.
	self deny: (uri isOpaque).
	self deny: (uri isRelative).
	self assert: (uri userInfo = 'ftp').
	self assert: (uri host = 'pharo.org').
	self assert: (uri port isNil).
