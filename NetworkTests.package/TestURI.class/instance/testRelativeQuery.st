tests query
testRelativeQuery
	"Relative query."
	
	<expectedFailure>

	| uri uriString |
	uriString := '/path/to/resource?query'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self deny: (uri isAbsolute).
	self deny: (uri isOpaque).
	self assert: (uri query = 'query').