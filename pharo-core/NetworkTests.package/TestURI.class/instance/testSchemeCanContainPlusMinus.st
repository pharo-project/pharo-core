parsing tests
testSchemeCanContainPlusMinus
	"Digits and + and - and . are allowed."

	| uri uriString |
	uriString := 's-c+h.e1mE://host/'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri scheme = 's-c+h.e1mE').