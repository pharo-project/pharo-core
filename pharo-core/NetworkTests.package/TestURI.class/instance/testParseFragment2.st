fragment
testParseFragment2
	"Fragment with no query."

	| uri uriString |
	uriString := 'scheme://host/path/to/resource#fragment'.
	uri := URI fromString: uriString.
	self should: [uri asString = uriString].
	self should: [uri isAbsolute].
	self shouldnt: [uri isOpaque].
	self should: [uri query isNil].
	self should: [uri fragment = 'fragment'].