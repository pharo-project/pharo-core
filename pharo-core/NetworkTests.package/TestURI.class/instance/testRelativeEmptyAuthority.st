tests authority
testRelativeEmptyAuthority
	"self debug: #testRelativeEmptyAuthority"
	"remember [scheme:][//authority][path][?query][#fragment]
		where authority can be [user-info@]host[:port]"
		
	<expectedFailure>	
		
	| uri uriString |
	uriString := '//'. "A relative URI with empty (but defined) authority."
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self deny: (uri isAbsolute).
	self deny: (uri authority isNil).
	self deny: (uri isOpaque).