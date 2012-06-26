fragment
testParseFragment5
	"Even opaque parts can have fragments.  The empty fragment, in fact."

	| uri uriString |
	uriString := 'scheme:opaque#'.
	uri := URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self should: [uri isOpaque].
	self should: [uri fragment = ''].