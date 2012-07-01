tests ports
testHostWithPort

	| uri uriString |
	"[scheme:][//authority][path][?query][#fragment]
	where authority can be [user-info@]host[:port]"
	
	uriString := 'http://host:123/'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri isAbsolute).
	self deny: (uri isOpaque).
	self assert: (uri authority port = 123).
