private
extractSchemeSpecificPartAndFragment: remainder
	super extractSchemeSpecificPartAndFragment: remainder.
	schemeSpecificPart := self extractQuery: schemeSpecificPart