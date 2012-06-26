printing
printDetails: strm
	"Put my class>>selector and arguments and temporaries on the stream.  Protect against errors during printing."

	| str |
	self printOn: strm.  

	strm cr; tab; nextPutAll: 'Arguments and temporary variables: '; cr.
	str := [self tempsAndValuesLimitedTo: 80 indent: 2] ifError: [
						'<<error during printing>>'].
	strm nextPutAll: str.
	strm peekLast == Character cr ifFalse: [strm cr].