tests user info
testNoPathOnlyAuthority


	| uri uriString |
	uriString := 'scheme://host'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri isAbsolute).
	self assert: (uri path = '').