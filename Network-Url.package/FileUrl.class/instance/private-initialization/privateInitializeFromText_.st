privateInitializeFromText: aString
	"Calculate host and path from a file URL in String format.
	Some malformed formats are allowed and interpreted by guessing."

	| schemeName pathString bare hasDriveLetter stream char i |
	bare := aString trimBoth.
	schemeName := Url schemeNameForString: bare.
	(schemeName isNil or: [schemeName ~= self schemeName])
		ifTrue: [
			host := ''.
			pathString := bare]
		ifFalse: [
			"First remove schemeName and colon"
			bare := bare copyFrom: (schemeName size + 2) to: bare size.
			"A proper file URL then has two slashes before host,
			A malformed URL is interpreted as using syntax file:<path>."
			(bare beginsWith: '//')
				ifTrue: [i := bare indexOf: $/ startingAt: 3.
						i=0 ifTrue: [
								host := bare copyFrom: 3 to: bare size.
								pathString := '']
							ifFalse: [
								host := bare copyFrom: 3 to: i-1.
								pathString := bare copyFrom: host size + 3 to: bare size]]
				ifFalse: [host := ''.
						pathString := bare]].
	self initializeFromPathString: pathString
