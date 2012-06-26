fragment
testParseFragment8
	"No illegally escaped characters in a fragment."
	
	<expectedFailure>

	self should: [URI fromString: 'scheme:opaque#frag%ment']
		raise: Error


