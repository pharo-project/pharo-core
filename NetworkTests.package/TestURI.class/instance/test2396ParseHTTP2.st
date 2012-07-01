tests 2396
test2396ParseHTTP2
	"From appendix B."

	| uri uriString |
	uriString := 'http://www.ics.uci.edu/pub/ietf/uri/#Related'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri isAbsolute).
	self deny: (uri isOpaque).
	self assert: (uri fragment = 'Related')