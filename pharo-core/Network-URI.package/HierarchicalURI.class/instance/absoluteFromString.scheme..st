private
absoluteFromString: aString scheme: schemeName
	| remainder |
	super absoluteFromString: aString scheme: schemeName.

	"We now have the interesting part in schemeSpecficPart and can parse it further"

	"This check is somewhat redundant, just in case somebody calls this directly."
	remainder := schemeSpecificPart.
	(remainder isEmpty
		or: [remainder first ~~ $/])
		ifTrue: [(IllegalURIException new uriString: remainder) signal: 'Invalid absolute URI'].

	(aString beginsWith: '//')
		ifTrue: [remainder := self extractAuthority: (remainder copyFrom: 3 to: remainder size)].

	self extractSchemeSpecificPartAndFragment: remainder