instance creation
readFrom: strm  "Symbol readFromString: '#abc'"

	strm peek = $# ifFalse: [self error: 'Symbols must be introduced by #'].
	^ (Scanner new scan: strm) advance  "Just do what the code scanner does"