expected failures
testColonOnly
	"If there's a colon, there's a scheme.  Supposed to be, anyway."

	<expectedFailure>

	self should: [URI fromString: '://host/']
		raise: IllegalURIException