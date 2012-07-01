test path
testPathForEmptyURI

	<expectedFailure>

	| uri uriString |
	uriString := ''.
	uri := URI fromString: uriString.
	self should: [uri asString = uriString].
	self shouldnt: [uri isAbsolute].
	self should: [uri path isNil].
	self should: [uri query isNil].
	self should: [uri fragment isNil].