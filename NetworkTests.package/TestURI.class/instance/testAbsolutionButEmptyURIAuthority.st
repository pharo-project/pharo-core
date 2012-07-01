tests authority
testAbsolutionButEmptyURIAuthority
	"self debug: #testAbsolutionButEmptyURIAuthority"
	
	| uri uriString | 
	uriString := 'scheme://'.			"An absolute URI with empty (but defined) authority."
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri isAbsolute).
	self deny: (uri authority isNil).
	self deny: (uri isOpaque).
	