test path
testPathWithDotDot

	<expectedFailure>

	| uri uriString |
	uriString := '/../path/../to/resource'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self deny: (uri isAbsolute).
	self assert: (uri path size = 6).
		"may be we should have the path chunk"