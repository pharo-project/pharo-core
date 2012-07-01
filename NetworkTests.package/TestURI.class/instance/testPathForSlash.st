test path
testPathForSlash

	<expectedFailure>

	| uri uriString |
	uriString := '/'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri path size = 2)