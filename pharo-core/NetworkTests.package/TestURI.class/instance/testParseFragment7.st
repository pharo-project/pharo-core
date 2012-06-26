fragment
testParseFragment7
	"No $| in a fragment."

	<expectedFailure>

	self should: [URI fromString: 'scheme:opaque#frag|ment']
		raise: IllegalURIException.


