test path
testPathWithThreeParts

	<expectedFailure>

	| uri uriString |
	uriString := 'rel/ative/path'.
	uri := URI fromString: uriString.
	self should: [uri asString = uriString].
	self shouldnt: [uri isAbsolute].
	self should: [uri path size = 3].