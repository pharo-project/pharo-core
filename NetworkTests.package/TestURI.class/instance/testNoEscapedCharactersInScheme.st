expected failures
testNoEscapedCharactersInScheme
	"No escaped characters in the scheme."

	<expectedFailure>

	self should: [URI fromString: 'sch%65me://host/']
		raise: IllegalURIException
