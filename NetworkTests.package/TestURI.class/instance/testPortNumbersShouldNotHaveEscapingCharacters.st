tests ports
testPortNumbersShouldNotHaveEscapingCharacters
	"No escaped characters can appear in a port; they turn it into a regName."

	| uri uriString |
	uriString := 'scheme://host:1%323/'.
	uri := URI fromString: uriString.
	self assert: (uri isAbsolute).
	self deny: (uri isOpaque).
	self assert: (uri authority name =  'host:1')
	"may be this should be an error?"

