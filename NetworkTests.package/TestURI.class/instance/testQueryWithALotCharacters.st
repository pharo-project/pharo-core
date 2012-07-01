tests query
testQueryWithALotCharacters
	
	<expectedFailure>
	
	| uri uriString |
	uriString := 'http:/path/to/resource?Pharo| is%20h-y3"p.er!cool '.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri isAbsolute).
	self deny: (uri isOpaque).
	self assert: (uri query = 'http:/path/to/resource?Pharo| is h-y3"p.er!cool ').
