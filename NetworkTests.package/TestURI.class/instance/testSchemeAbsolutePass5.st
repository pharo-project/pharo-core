parsing tests
testSchemeAbsolutePass5
	| uri |
	uri := URI fromString: 'http://www.pharo-project.org#fragment'.
	self assert: (uri scheme = 'http').
	self assert: (uri isAbsolute).
	self deny: (uri isOpaque).
	self deny: (uri isRelative).
	self assert: (uri fragment = 'fragment').
